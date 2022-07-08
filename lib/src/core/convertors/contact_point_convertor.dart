import 'package:fhir/r5.dart';

// ******************************************
//!            ContactPointSystem
//*******************************************

final _contactPointSystemMap = {
  'phone': ContactPointSystem.phone,
  'email': ContactPointSystem.email,
  'fax': ContactPointSystem.fax,
  'other': ContactPointSystem.other,
  'pager': ContactPointSystem.pager,
  'sms': ContactPointSystem.sms,
  'url': ContactPointSystem.url,
};

List<String> get contactPointSystemText => _contactPointSystemMap.keys
    .map((e) => e[0].toUpperCase() + e.substring(1))
    .toList();

/// returns the [ContactPointSystem] for given text
///
/// case-in-sensative i.e phone and PHONE makes no differences
///
/// if there is no exact match it will retuns the [ContactPointSystem.unknown]
ContactPointSystem textToContactPointSystem(String text) =>
    _contactPointSystemMap[text.toLowerCase()] ?? ContactPointSystem.phone;

/// returns the text correspoindind to the ContactPointSystem
///
/// eg, ContactPointSyatem.email ==>  return 'email'
String contactPointSystemToText(ContactPointSystem use) =>
    use.toString().split('.').last;

// ******************************************
//!           ContactPointUse
//*******************************************

final _contactPointUseMap = {
  'home': ContactPointUse.home,
  'mobile': ContactPointUse.mobile,
  'old': ContactPointUse.old,
  'temp': ContactPointUse.temp,
  'work': ContactPointUse.work,
};

List<String> get contactPointUseText => _contactPointUseMap.keys
    .map((e) => e[0].toUpperCase() + e.substring(1))
    .toList();

/// returns the [ContactPointUse] for given text
///
/// case-in-sensative i.e phone and PHONE makes no differences
///
/// if there is no exact match it will retuns the [ContactPointUse.unknown]
ContactPointUse textToContactPointUse(String text) =>
    _contactPointUseMap[text.toLowerCase()] ?? ContactPointUse.home;

/// returns the text correspoindind to the ContactPointUse
///
/// eg, ContactPointUse.home ==>  return 'home'
String contactPointUseToText(ContactPointUse use) =>
    use.toString().split('.').last;
