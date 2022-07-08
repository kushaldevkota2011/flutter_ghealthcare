// ignore_for_file: invalid_annotation_target

part of 'device_request.dart';

/// Class is used to represent the [code] field of DeviceRequest
///
/// It will hold the list of requestd device inSide the [coadableConcept]
@freezed
class DeviceRequested with _$DeviceRequested {
  DeviceRequested._();

  factory DeviceRequested({
    Reference? reference,
    @JsonKey(name: 'CodeableConcept') CodeableConcept? codeableConcept,
  }) = _DeviceRequested;

  factory DeviceRequested.fromJson(Map<String, dynamic> json) =>
      _$DeviceRequestedFromJson(json);
}
