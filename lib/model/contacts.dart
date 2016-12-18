library about_me.lib.model.contacts;

import 'dart:convert';
import 'package:about_me/model/contact.dart';

class Contacts {

  List<Contact> contacts;

  Contacts.fromJson(json) {
    contacts = [];
    var data = JSON.decode(json);
    data["contacts"].forEach((contact) {
      contacts.add(new Contact.fromMap(contact));
    });
  }
}
