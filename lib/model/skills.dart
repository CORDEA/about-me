library about_me.lib.model.skills;

import 'dart:core';
import 'dart:convert';
import 'package:about_me/model/skill.dart';

class Skills {

  List<Skill> skills;

  Skills();

  Skills.fromJson(json) {
    skills = [];
    var data = JSON.decode(json);
    var list = data["skills"];
    list.forEach((skill) {
      skills.add(new Skill.fromMap(skill));
    });
  }
}
