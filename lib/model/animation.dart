library about_me.lib.model.animation;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:about_me/main_skill.dart';

class SlideAnimation extends JsProxy {

  @reflectable
  String exitAnimation;

  @reflectable
  String entryAnimation;

  @reflectable
  int selectedIndex;

  SlideAnimation(this.entryAnimation, this.exitAnimation, this.selectedIndex);
}
