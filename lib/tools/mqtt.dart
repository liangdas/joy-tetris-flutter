import 'dart:async';

import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
//web环境跟andriod ios macos引用不同，需要注释，否则编译不过
//import 'package:mqtt_client/mqtt_browser_client.dart';
import 'package:typed_data/typed_data.dart' as typed;
import 'EventBus.dart';
import 'mqtt_model.dart';
//订阅者回调签名
typedef void EventCallback(MqttMessageEvent arg);

class MQTTEventBus {
  //私有构造函数
  MQTTEventBus._internal();

  //保存单例
  static MQTTEventBus _singleton = new MQTTEventBus._internal();

  //工厂构造函数
  factory MQTTEventBus()=> _singleton;

  //保存事件订阅者队列，key:事件名(id)，value: 对应事件的订阅者队列
  var _emap = new Map<Object, EventCallback>();

  //添加订阅者
  void on(eventName, EventCallback f) {
    if (eventName == null || f == null) return;
    _emap[eventName] = f;
  }

  //移除订阅者
  void off(eventName, [EventCallback f]) {
    _emap[eventName];
  }

  //触发事件，事件触发后该事件所有订阅者会被调用
  bool emit(eventName, [arg]) {
    var f = _emap[eventName];
    if (f == null) return false;
    f(arg);
    return true;
  }
}
class MqttFactory {
  //私有构造函数
  MqttFactory._internal();

  //保存单例
  static MqttFactory _singleton = new MqttFactory._internal();

  //工厂构造函数
  factory MqttFactory()=> _singleton;

  MqttClient _client;
  MqttConnectionState _connectionState;

  MqttClient get client => _client;
  MqttConnectionState get connectionState => _connectionState;
  StreamSubscription _subscription;

  String _broker = '';
  int _port=3653;

  int _seq=0;

  String get broker => _broker;
  int get port => _port;


  MQTTEventBus _bus ;

  MQTTEventBus get mqttbus => _bus;

  void connect(String broker,int port ) async {
    _bus= new MQTTEventBus();
    this._broker=broker;
    this._port=port;
    /// First create a client, the client is constructed with a broker name, client identifier
    /// and port if needed. The client identifier (short ClientId) is an identifier of each MQTT
    /// client connecting to a MQTT broker. As the word identifier already suggests, it should be unique per broker.
    /// The broker uses it for identifying the client and the current state of the client. If you don’t need a state
    /// to be hold by the broker, in MQTT 3.1.1 you can set an empty ClientId, which results in a connection without any state.
    /// A condition is that clean session connect flag is true, otherwise the connection will be rejected.
    /// The client identifier can be a maximum length of 23 characters. If a port is not specified the standard port
    /// of 1883 is used.
    /// If you want to use websockets rather than TCP see below.
    //if(!kIsWeb) {
      MqttServerClient c = MqttServerClient.withPort(
          this._broker, '', this._port);
      c.useWebSocket = true;
      _client=c;
//    }else{
//      MqttBrowserClient c = MqttBrowserClient.withPort(this._broker, '',this._port);
//      _client=c;
//    }
    _client.setProtocolV31();  //设置mqtt版本

    /// A websocket URL must start with ws:// or wss:// or Dart will throw an exception, consult your websocket MQTT broker
    /// for details.
    /// To use websockets add the following lines -:
    // client.useWebSocket = true;

    /// This flag causes the mqtt client to use an alternate method to perform the WebSocket handshake. This is needed for certain
    /// matt clients (Particularly Amazon Web Services IOT) that will not tolerate additional message headers in their get request
    // client.useAlternateWebSocketImplementation = true;
    // client.port = 443; // ( or whatever your WS port is)
    /// Note do not set the secure flag if you are using wss, the secure flags is for TCP sockets only.

    /// Set logging on if needed, defaults to off
    _client.logging(on: false);

    /// If you intend to use a keep alive value in your connect message that is not the default(60s)
    /// you must set it here
    _client.keepAlivePeriod = 30;


    /// Add the unsolicited disconnection callback
    _client.onDisconnected = _onDisconnected;
    /// Create a connection message to use or use the default one. The default one sets the
    /// client identifier, any supplied username/password, the default keepalive interval(60s)
    /// and clean session, an example of a specific one below.
    final MqttConnectMessage connMess = MqttConnectMessage()
        .withClientIdentifier('Mqtt_MyClientUniqueId2')
    // Must agree with the keep alive set above or not set
        .startClean() // Non persistent session for testing
        .keepAliveFor(30)
    // If you set this you must set a will message
        .withWillTopic('willtopic')
        .withWillMessage('My Will message')
        .withWillQos(MqttQos.atLeastOnce);
    print('MQTT client connecting....');
    _client.connectionMessage = connMess;

    /// Connect the client, any errors here are communicated by raising of the appropriate exception. Note
    /// in some circumstances the broker will just disconnect us, see the spec about this, we however will
    /// never send malformed messages.
    try {
      await _client.connect();
      bus.fire(new MqttStateEvent(MqttConnectionState.connected));
    } catch (e) {
      print(e);
      disconnect();
    }

    /// Check if we are connected
    if (_client.connectionState == MqttConnectionState.connected) {
      print('MQTT client connected');
      this._connectionState = _client.connectionState;
    } else {
      print('ERROR: MQTT client connection failed - '
          'disconnecting, state is ${_client.connectionState}');
      disconnect();
    }

    /// The client has a change notifier object(see the Observable class) which we then listen to to get
    /// notifications of published updates to each subscribed topic.
    _subscription = _client.updates.listen(_onMessage);
  }


  void disconnect() {
    if(_client==null){
      return;
    }
    _client.disconnect();
  }

  void _onDisconnected() {
    _connectionState = _client.connectionState;
    _client = null;
    _subscription.cancel();
    _subscription = null;
    bus.fire(new MqttStateEvent(MqttConnectionState.disconnected));
    print('MQTT client disconnected');
  }

  void _onMessage(List<MqttReceivedMessage> events) {
    //print(events.length);
    events.forEach((MqttReceivedMessage recMess){
      //final MqttPublishMessage payload = recMess.payload as MqttPublishMessage;
      //final String message = MqttPublishPayload.bytesToStringAsString(payload.payload.message);
        /// The above may seem a little convoluted for users only interested in the
        /// payload, some users however may be interested in the received publish message,
        /// lets not constrain ourselves yet until the package has been in the wild
        /// for a while.
        /// The payload is a byte buffer, this will be specific to the topic
//        print('MQTT message: topic is <${recMess.topic}>, '
//            'payload is <-- ${message} -->');
//        print(_client.connectionState);
        bus.fire(new MqttMessageEvent(recMess));
        if(mqttbus.emit(recMess.topic,new MqttMessageEvent(recMess))){
          Uri uri = Uri.parse(recMess.topic);
          if(uri.queryParameters.containsKey("msg_id")){
            //有消息ID,则自动删除监听
            mqttbus.off(recMess.topic);
          }
        }else{
          print("no linter for "+recMess.topic);
        }
    });
  }
  void reconnect(){
    try {
       this.connect(_broker, port);
    } catch (e) {
      print(e);
    }
  }
  void request(String topic, String data,EventCallback callback)   {
    if(_client==null){
      //尝试重连
      try {
         this.connect(_broker, port);
      } catch (e) {
        print(e);
      }
      return;
    }
    Uri uri = Uri.parse(topic);
    Map<String, dynamic > para={'msg_id': (this._seq++).toString()};
    para.addAll(uri.queryParameters);
    uri=uri.replace(queryParameters: para);
    mqttbus.on(uri.toString(), callback);
    final MqttClientPayloadBuilder builder = MqttClientPayloadBuilder();
    builder.addUTF8String(data);
    _client.publishMessage(uri.toString(), MqttQos.atMostOnce, builder.payload);
  }

  void requestbuffer(String topic, typed.Uint8Buffer data,EventCallback callback)   {
    if(_client==null){
      //尝试重连
      try {
        this.connect(_broker, port);
      } catch (e) {
        print(e);
      }
      return;
    }
    Uri uri = Uri.parse(topic);
    Map<String, dynamic > para={'msg_id': (this._seq++).toString()};
    para.addAll(uri.queryParameters);
    uri=uri.replace(queryParameters: para);
    mqttbus.on(uri.toString(), callback);
    _client.publishMessage(uri.toString(), MqttQos.atMostOnce, data);
  }

}

//定义一个top-level变量，页面引入该文件后可以直接使用bus
var mqttfactory = new MqttFactory();