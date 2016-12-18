library about_me.lib.model.contact;

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

  Contact.fromMap(map) {
    name = map["name"];
    userName = map["userName"];
    description = map["description"];
    url = map["url"];
    thumbnailUrl = map["thumbnailUrl"];
    color = map["color"];
  }
}
