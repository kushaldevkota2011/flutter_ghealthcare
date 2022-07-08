import 'package:raidon_fhir/src/core/core.dart';

// ************************************
//!            Encounter Type
//*************************************

List<String> get encounterTypeList => EncounterType.values
    .map((e) => e.toString().split('.').last.replaceBySpaceAndCaptilized)
    .toList();

EncounterType textToEncounterType(String value) =>
    EncounterType.values.firstWhere((element) =>
        element.toString().split('.').last ==
        value.toLowerCase().replaceAll(" ", '_'));

// ************************************
//!            Encounter Class
//*************************************

List<String> get encounterClassList => EncounterClass.values
    .map((e) => e.toString().split('.').last.replaceBySpaceAndCaptilized)
    .toList();

EncounterClass textToEncounterClass(String value) =>
    EncounterClass.values.firstWhere((element) =>
        element.toString().split('.').last ==
        value.toLowerCase().replaceAll(" ", "_"));
