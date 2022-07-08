import 'package:raidon_fhir/src/core/value_set/value_set.dart';
import '../extensions/string_extension.dart';

List<String> get maritalStatusList => PatientMaritalStatus.values
    .map<String>(
        (e) => e.toString().split('.').last.replaceBySpaceAndCaptilized)
    .toList();

PatientMaritalStatus textToMaritialStatus(String value) =>
    PatientMaritalStatus.values.firstWhere((element) =>
        element.toString().split('.').last ==
        value.toLowerCase().replaceAll(" ", '_'));
