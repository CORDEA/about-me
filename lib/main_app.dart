@HtmlImport('main_app.html')
library about_me.lib.main_app;

import 'dart:html';

import 'package:about_me/main_pages_container.dart';
import 'package:about_me/model/animation.dart';
import 'package:polymer_elements/paper_header_panel.dart';
import 'package:polymer_elements/paper_toolbar.dart';
import 'package:polymer_elements/paper_tabs.dart';
import 'package:polymer_elements/paper_tab.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

/// Uses [MainPagesContainer]
/// Uses [PaperHeaderPanel]
/// Uses [PaperToolbar]
/// Uses [PaperTabs]
/// Uses [PaperTab]
@PolymerRegister('main-app')
class MainApp extends PolymerElement {
  MainApp.created() : super.created();

  @property
  List<String> tabs = ["Profile", "Skill", "Contact"];

  @property
  int selectedIndex = 0;

  int _previousSelectedIndex = 0;

  @property
  SlideAnimation slideAnimation(int selectedIndex) {
    var anim = new SlideAnimation("slide-from-right-animation", "slide-left-animation", selectedIndex);
    if (_previousSelectedIndex > selectedIndex) {
      anim = new SlideAnimation("slide-from-left-animation", "slide-right-animation", selectedIndex);
    }
    _previousSelectedIndex = selectedIndex;
    return anim;
  }
}
