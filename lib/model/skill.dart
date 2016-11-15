library about_me.lib.model.skill;

import 'dart:html';
import 'package:dartson/dartson.dart' as dson;
import 'package:polymer/polymer.dart';

@dson.Entity()
class Skill extends JsProxy {

  @reflectable
  String type;

  @reflectable
  String imageUrl;

  @reflectable
  String title;

  @reflectable
  String description;

  @reflectable
  int startYear;

  @reflectable
  int endYear;

  @reflectable
  int months;

  @reflectable
  int level;

  @reflectable
  String linkName;

  @reflectable
  @dson.Property(ignore: true)
  String get period => _getPeriod();

  String _getPeriod() {
    return "$startYear ~ $endYear";
  }

  @reflectable
  @dson.Property(ignore: true)
  String get icon => _getIcon();

  String _getIcon() {
    switch(level) {
      case 0:
        return "";
      case 1:
        return "icons:star-border";
      case 2:
        return "icons:star-half";
      case 3:
        return "icons:star";
    }
    return "";
  }

}
