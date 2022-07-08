// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rfa_model/models/models.dart';
part 'rfa_model.freezed.dart';
part 'rfa_model.g.dart';

@freezed
class RFAModel with _$RFAModel {
  RFAModel._();

  factory RFAModel({
    @Default(true) @JsonKey(name: 'new_request') bool? newRequest,
    @Default(false) bool? resubmission,
    @Default(false) @JsonKey(name: 'expedited_review') bool? expeditedReview,
    @JsonKey(name: 'written_confirmation_of_oral_request')
        bool? writtenConfirmationOfOralRequest,
    @JsonKey(name: 'employee_info') EmployeeInfo? employeeInfo,
    @JsonKey(name: 'physician_info') RequestingPhysician? physicianInfo,
    @JsonKey(name: 'claims_administrator')
        ClaimsAdministrator? claimsAdministrator,
    @JsonKey(name: 'claims_response') ClaimsResponse? claimsResponse,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'requested_treatment')
        List<RequestedTreatment>? requestedTreatment,
  }) = _RFAModel;

  factory RFAModel.fromJson(Map<String, dynamic> json) =>
      _$RFAModelFromJson(json);
}
