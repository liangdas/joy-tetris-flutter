import 'dart:convert';
import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/widgets.dart';

class TexturepackerLoader {
  static Future<Map<String, Sprite>> fromJSONAtlas(
      String imagePath, String dataPath) async {
    final String content = await Flame.assets.readFile(dataPath);
    Image image = await Flame.images.load(imagePath);  
    final Map<String, dynamic> json = jsonDecode(content);

    final Map<String, dynamic> jsonFrames = json['frames'];
    final Map<String, Sprite> sprites = Map<String, Sprite>();
    jsonFrames.forEach((key,value){
      final frameData = value['frame'];
      final int x = frameData['x'];
      final int y = frameData['y'];
      final int width = frameData['w'];
      final int height = frameData['h'];


      final Sprite sprite = Sprite(
        image,
        srcPosition: Vector2(x.toDouble(),y.toDouble()),
        srcSize: Vector2(width.toDouble(),height.toDouble()),
      );
      sprites[key]=sprite;
    });
    return sprites;
  }
}
