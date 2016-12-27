@HtmlImport('main_skill.html')
library about_me.lib.main_skill;

import 'dart:async';
import 'dart:html';

import 'package:about_me/char_icon.dart';
import 'package:about_me/model/skill.dart';
import 'package:about_me/model/skills.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';
import 'package:polymer_elements/paper_card.dart';
import 'package:polymer_elements/paper_icon_item.dart';
import 'package:polymer_elements/paper_listbox.dart';
import 'package:polymer_elements/paper_item_body.dart';
import 'package:polymer_elements/iron_icon.dart';
import 'package:polymer_elements/iron_icons.dart';

const JsonName = 'skills.json';

/// Uses [CharIcon]
/// Uses [PaperCard]
/// Uses [PaperListbox]
/// Uses [PaperMaterial]
/// Uses [PaperIconItem]
/// Uses [PaperItemBody]
/// Uses [PaperRipple]
/// Uses [IronImage]
/// Uses [IronIcon]
@PolymerRegister('main-skill')
class MainSkill extends PolymerElement {
  MainSkill.created() : super.created();

  @property
  Iterable<String> skillKeys;

  @reflectable
  List<Skill> skillValue(String key) => _skills[key];

  @reflectable
  bool isEmpty(String url) => url == null || url.isEmpty;

  @reflectable
  void onClickCell(event, [_]) {
    var target = event.currentTarget;
    var key = target.attributes['key'];
    var index = int.parse(target.attributes['index']);
    var item = skillValue(key)[index];
    if (!item.clickable) {
      return;
    }
    new Timer(new Duration(milliseconds: 300), () {
      window.open('https://github.com/CORDEA?language=${item.linkName}&tab=repositories', '_blank');
    });
  }

  Map<String, List<Skill>> _skills = {};

  int previousSkillCols = 0;

  attached() {
    super.attached();
    this.async(() {
      HttpRequest.getString(JsonName).then((response) {
        var origin = new Skills.fromJson(response).skills;
        Map<String, List<Skill>> skills = {};
        origin.forEach((skill) {
          if (!skills.containsKey(skill.type)) {
            skills[skill.type] = [];
          }
          skills[skill.type].add(skill);
        });
        skills.forEach((k, v) {
          v.sort((a, b) => a.title.compareTo(b.title));
        });

        _skills = skills;
        set('skillKeys', skills.keys);
      });
    });
  }
}
