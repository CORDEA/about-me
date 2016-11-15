@HtmlImport('main_contact.html')
library about_me.lib.main_contact;

import 'dart:async';
import 'dart:html';

import 'package:polymer/polymer.dart';
import 'package:about_me/model/contact.dart';
import 'package:web_components/web_components.dart';
import 'package:polymer_elements/paper_ripple.dart';
import 'package:polymer_elements/paper_card.dart';

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
    clear('contacts');
    addAll('contacts', [
      new Contact("GitHub", "CORDEA", "", "https://github.com/CORDEA", "", "grey"),
      new Contact("Qiita", "CORDEA", "", "http://qiita.com/CORDEA", "", "lime"),
      new Contact("Hatenablog", "CORDEA", "", "http://cordea.hatenadiary.com/", "", "light-blue"),
      new Contact("LinkedIn", "Yoshihiro Tanaka", "", "", "", "blue"),
      new Contact("Kickstarter", "Yoshihiro Tanaka", "", "", "", "teal")
    ]);
  }

  MainContact.created() : super.created();

}
