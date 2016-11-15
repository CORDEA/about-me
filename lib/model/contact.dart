library about_me.lib.model.contact;

import 'dart:html';
import 'package:dartson/dartson.dart' as dson;
import 'package:polymer/polymer.dart';

@dson.Entity()
class Contact extends JsProxy {

  @reflectable
  String name;

  @reflectable
  String userName;

  @reflectable
  String description;

  @reflectable
  String url;

  @reflectable
  String thumbnailUrl;

  @reflectable
  String color;

}
