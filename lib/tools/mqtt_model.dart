import 'package:mqtt_client/mqtt_client.dart';
import 'package:flutter/material.dart';
import 'message.dart';
import 'mqtt.dart';
class MqttModel with ChangeNotifier {
  MqttConnectionState _state ;
  IconData _connectionStateIcon;
  List<Message> _messages = <Message>[];

  List<Message> messages(String feeds) => _messages;

  IconData get connectionStateIcon => _connectionStateIcon;

  MqttConnectionState get state => _state;

  void changeState(MqttConnectionState state) {
    _state=state;
    _connectionStateIcon=switchIcon(state);
    notifyListeners();
  }
  void clearMessage(){
    _messages.clear();
    notifyListeners();
  }
  void receivedMessage(MqttReceivedMessage recMess) {
    final MqttPublishMessage payload = recMess.payload as MqttPublishMessage;
    final String message =
    MqttPublishPayload.bytesToStringAsString(payload.payload.message);
    _messages.add(Message(
      topic: recMess.topic,
      message: message,
      qos: payload.payload.header.qos,
    ));
    notifyListeners();
  }

  IconData switchIcon(MqttConnectionState connectionState){
    IconData connectionStateIcon;
    switch (connectionState) {
      case MqttConnectionState.connected:
        connectionStateIcon = Icons.cloud_done;
        break;
      case MqttConnectionState.disconnected:
        connectionStateIcon = Icons.cloud_off;
        mqttfactory.reconnect();
        break;
      case MqttConnectionState.connecting:
        connectionStateIcon = Icons.cloud_upload;
        break;
      case MqttConnectionState.disconnecting:
        connectionStateIcon = Icons.cloud_download;
        break;
      case MqttConnectionState.faulted:
        connectionStateIcon = Icons.error;
        break;
      default:
        connectionStateIcon = Icons.cloud_off;
    }
    return  connectionStateIcon;
  }
  @override
  void dispose() {
    super.dispose();
  }
}

class MqttStateEvent{
  MqttConnectionState state;

  MqttStateEvent(this.state);
}

class MqttMessageEvent{
  MqttReceivedMessage message;

  MqttMessageEvent(this.message);
}