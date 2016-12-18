library about_me.lib.model.skill;

import 'package:polymer/polymer.dart';

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
  String get period => _getPeriod();

  String _getPeriod() {
    return "$startYear ~ $endYear";
  }

  @reflectable
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

  Skill.fromMap(map) {
    type = map["type"];
    imageUrl = map["imageUrl"];
    title = map["title"];
    description = map["description"];
    startYear = map["startYear"];
    endYear = map["endYear"];
    months = map["months"];
    level = map["level"];
    linkName = map["linkName"];
  }
}
