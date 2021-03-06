import 'package:flame/components/component.dart';
import 'package:flame/flame.dart';
import 'package:flame/game/base_game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';

late Size size;

void main() async {

  WidgetsFlutterBinding.ensureInitialized();    // 해당 플러터 바인딩이 제대로 되었는지 확인
  size = await Flame.util.initialDimensions();
  runApp(MyGame().widget);
}


class MyGame extends BaseGame {
  MyGame(){
    this.add(SpriteComponent.fromSprite(size.width, size.height, Sprite("bg.png")));
  }
}