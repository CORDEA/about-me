@HtmlImport('char_icon.html')
library about_me.lib.char_icon;

import 'dart:html';

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

@PolymerRegister('char-icon')
class CharIcon extends PolymerElement {
  CharIcon.created() : super.created();

  List<String> _colors = [
    // 'red',
    // 'pink',
    'purple',
    // 'deep-purple',
    // 'indigo',
    'blue',
    'light-blue',
    'cyan',
    'teal',
    'green',
    'light-green',
    'lime',
    'yellow',
    'amber',
    'orange',
    // 'deep-orange'
    // 'brown',
    // 'blue-grey'
  ];

  @property
  String color;

  @property
  String text;

  @property
  String char;

  attached() {
    var c = 26 / _colors.length;
    var char = text[0].toUpperCase();
    set('char', char);
    set('color', _colors[((char.codeUnitAt(0) - 'A'.codeUnitAt(0)) / c).floor()]);
  }
}
