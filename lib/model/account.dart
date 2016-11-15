library about_me.lib.model.account;

import 'package:polymer/polymer.dart';

class Account extends JsProxy {

  @reflectable
  String name;

  @reflectable
  String url;

  Account(this.name, this.url);

}
