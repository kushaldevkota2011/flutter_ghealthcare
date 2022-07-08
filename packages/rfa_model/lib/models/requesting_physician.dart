// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'requesting_physician.freezed.dart';
part 'requesting_physician.g.dart';

@freezed
class RequestingPhysician with _$RequestingPhysician {
  RequestingPhysician._();

  factory RequestingPhysician({
    String? name,
    @JsonKey(name: 'practice_name') String? practiceName,
    @JsonKey(name: 'contact_name') String? contactName,
    String? address,
    String? city,
    String? state,
    @JsonKey(name: 'zip_code') String? zipCode,
    String? phone,
    @JsonKey(name: "fax_number") String? faxNumber,
    String? specialty,
    @JsonKey(name: 'NPI_number') String? npiNumber,
    String? email,
  }) = _RequestingPhysician;

  factory RequestingPhysician.fromJson(Map<String, dynamic> json) =>
      _$RequestingPhysicianFromJson(json);
}
