@HtmlImport('main_contact.html')
library about_me.lib.main_contact;

import 'dart:async';
import 'dart:html';

import 'package:about_me/model/contacts.dart';
import 'package:dartson/dartson.dart';
import 'package:polymer/polymer.dart';
import 'package:about_me/model/contact.dart';
import 'package:web_components/web_components.dart';
import 'package:polymer_elements/paper_ripple.dart';
import 'package:polymer_elements/paper_card.dart';

const JsonName = 'contacts.json';

/// Uses [PaperCard]
/// Uses [PaperRipple]
@PolymerRegister('main-contact')
class MainContact extends PolymerElement {

  @property
  List<Contact> contacts = [];

  @reflectable
  void onClickButton(event, [_]) {
    var id = event.currentTarget.attributes['id'];
    var contact = contacts.where((item) => item.name == id).first;
    new Timer(new Duration(milliseconds: 300), () {
      window.open(contact.url, '_blank');
    });
  }

  attached() {
    super.attached();
    this.async(() {
      HttpRequest.getString(JsonName).then((response) {
        var dson = new Dartson.JSON();
        var contacts = dson.decode(response, new Contacts()).contacts;
        set('contacts', contacts);
      });
    });
  }

  MainContact.created() : super.created();

}
