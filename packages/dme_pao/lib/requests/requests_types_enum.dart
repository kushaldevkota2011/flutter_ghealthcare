import 'package:freezed_annotation/freezed_annotation.dart';

enum RequestType {
  @JsonValue('DeviceRequest')
  deviceRequest,
  @JsonValue('MedicationRequest')
  medicationRequest
}
