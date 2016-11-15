library about_me.lib.model.contact;

import 'dart:html';
import 'package:polymer/polymer.dart';

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

  Contact(this.name, this.userName, this.description, this.url, this.thumbnailUrl, this.color);

}
