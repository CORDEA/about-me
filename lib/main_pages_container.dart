@HtmlImport('main_pages_container.html')
library about_me.lib.main_pages_container;

import 'dart:html';

import 'package:about_me/main_skill.dart';
import 'package:about_me/main_contact.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';
import 'package:polymer_elements/neon_animatable.dart';
import 'package:polymer_elements/neon_animated_pages.dart';
import 'package:polymer_elements/neon_animation/animations/slide_left_animation.dart';
import 'package:polymer_elements/neon_animation/animations/slide_right_animation.dart';
import 'package:polymer_elements/neon_animation/animations/slide_from_right_animation.dart';
import 'package:polymer_elements/neon_animation/animations/slide_from_left_animation.dart';

/// Uses [MainSkill]
/// Uses [MainContact]
/// Uses [NeonAnimatable]
/// Uses [NeonAnimatedPages]
/// Uses [SlideLeftAnimation]
/// Uses [SlideRightAnimation]
/// Uses [SlideFromRightAnimation]
/// Uses [SlideFromLeftAnimation]
@PolymerRegister('main-pages-container')
class MainPagesContainer extends PolymerElement {
  MainPagesContainer.created() : super.created();

  @property
  String thumbnailUrl = "./images/CORDEA_LOGO_500.png";

  @property
  String title = "Yoshihiro Tanaka";

  @property
  String description = "Android / Xamarin Developer";

}
