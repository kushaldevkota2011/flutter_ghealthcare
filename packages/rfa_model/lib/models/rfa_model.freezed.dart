// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rfa_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RFAModel _$RFAModelFromJson(Map<String, dynamic> json) {
  return _RFAModel.fromJson(json);
}

/// @nodoc
mixin _$RFAModel {
  @JsonKey(name: 'new_request')
  bool? get newRequest => throw _privateConstructorUsedError;
  bool? get resubmission => throw _privateConstructorUsedError;
  @JsonKey(name: 'expedited_review')
  bool? get expeditedReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'written_confirmation_of_oral_request')
  bool? get writtenConfirmationOfOralRequest =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_info')
  EmployeeInfo? get employeeInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'physician_info')
  RequestingPhysician? get physicianInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'claims_administrator')
  ClaimsAdministrator? get claimsAdministrator =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'claims_response')
  ClaimsResponse? get claimsResponse => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_treatment')
  List<RequestedTreatment>? get requestedTreatment =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RFAModelCopyWith<RFAModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RFAModelCopyWith<$Res> {
  factory $RFAModelCopyWith(RFAModel value, $Res Function(RFAModel) then) =
      _$RFAModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'new_request')
          bool? newRequest,
      bool? resubmission,
      @JsonKey(name: 'expedited_review')
          bool? expeditedReview,
      @JsonKey(name: 'written_confirmation_of_oral_request')
          bool? writtenConfirmationOfOralRequest,
      @JsonKey(name: 'employee_info')
          EmployeeInfo? employeeInfo,
      @JsonKey(name: 'physician_info')
          RequestingPhysician? physicianInfo,
      @JsonKey(name: 'claims_administrator')
          ClaimsAdministrator? claimsAdministrator,
      @JsonKey(name: 'claims_response')
          ClaimsResponse? claimsResponse,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @JsonKey(name: 'deleted_at')
          DateTime? deletedAt,
      @JsonKey(name: 'requested_treatment')
          List<RequestedTreatment>? requestedTreatment});

  $EmployeeInfoCopyWith<$Res>? get employeeInfo;
  $RequestingPhysicianCopyWith<$Res>? get physicianInfo;
  $ClaimsAdministratorCopyWith<$Res>? get claimsAdministrator;
  $ClaimsResponseCopyWith<$Res>? get claimsResponse;
}

/// @nodoc
class _$RFAModelCopyWithImpl<$Res> implements $RFAModelCopyWith<$Res> {
  _$RFAModelCopyWithImpl(this._value, this._then);

  final RFAModel _value;
  // ignore: unused_field
  final $Res Function(RFAModel) _then;

  @override
  $Res call({
    Object? newRequest = freezed,
    Object? resubmission = freezed,
    Object? expeditedReview = freezed,
    Object? writtenConfirmationOfOralRequest = freezed,
    Object? employeeInfo = freezed,
    Object? physicianInfo = freezed,
    Object? claimsAdministrator = freezed,
    Object? claimsResponse = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? requestedTreatment = freezed,
  }) {
    return _then(_value.copyWith(
      newRequest: newRequest == freezed
          ? _value.newRequest
          : newRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      resubmission: resubmission == freezed
          ? _value.resubmission
          : resubmission // ignore: cast_nullable_to_non_nullable
              as bool?,
      expeditedReview: expeditedReview == freezed
          ? _value.expeditedReview
          : expeditedReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      writtenConfirmationOfOralRequest: writtenConfirmationOfOralRequest ==
              freezed
          ? _value.writtenConfirmationOfOralRequest
          : writtenConfirmationOfOralRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      employeeInfo: employeeInfo == freezed
          ? _value.employeeInfo
          : employeeInfo // ignore: cast_nullable_to_non_nullable
              as EmployeeInfo?,
      physicianInfo: physicianInfo == freezed
          ? _value.physicianInfo
          : physicianInfo // ignore: cast_nullable_to_non_nullable
              as RequestingPhysician?,
      claimsAdministrator: claimsAdministrator == freezed
          ? _value.claimsAdministrator
          : claimsAdministrator // ignore: cast_nullable_to_non_nullable
              as ClaimsAdministrator?,
      claimsResponse: claimsResponse == freezed
          ? _value.claimsResponse
          : claimsResponse // ignore: cast_nullable_to_non_nullable
              as ClaimsResponse?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestedTreatment: requestedTreatment == freezed
          ? _value.requestedTreatment
          : requestedTreatment // ignore: cast_nullable_to_non_nullable
              as List<RequestedTreatment>?,
    ));
  }

  @override
  $EmployeeInfoCopyWith<$Res>? get employeeInfo {
    if (_value.employeeInfo == null) {
      return null;
    }

    return $EmployeeInfoCopyWith<$Res>(_value.employeeInfo!, (value) {
      return _then(_value.copyWith(employeeInfo: value));
    });
  }

  @override
  $RequestingPhysicianCopyWith<$Res>? get physicianInfo {
    if (_value.physicianInfo == null) {
      return null;
    }

    return $RequestingPhysicianCopyWith<$Res>(_value.physicianInfo!, (value) {
      return _then(_value.copyWith(physicianInfo: value));
    });
  }

  @override
  $ClaimsAdministratorCopyWith<$Res>? get claimsAdministrator {
    if (_value.claimsAdministrator == null) {
      return null;
    }

    return $ClaimsAdministratorCopyWith<$Res>(_value.claimsAdministrator!,
        (value) {
      return _then(_value.copyWith(claimsAdministrator: value));
    });
  }

  @override
  $ClaimsResponseCopyWith<$Res>? get claimsResponse {
    if (_value.claimsResponse == null) {
      return null;
    }

    return $ClaimsResponseCopyWith<$Res>(_value.claimsResponse!, (value) {
      return _then(_value.copyWith(claimsResponse: value));
    });
  }
}

/// @nodoc
abstract class _$$_RFAModelCopyWith<$Res> implements $RFAModelCopyWith<$Res> {
  factory _$$_RFAModelCopyWith(
          _$_RFAModel value, $Res Function(_$_RFAModel) then) =
      __$$_RFAModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'new_request')
          bool? newRequest,
      bool? resubmission,
      @JsonKey(name: 'expedited_review')
          bool? expeditedReview,
      @JsonKey(name: 'written_confirmation_of_oral_request')
          bool? writtenConfirmationOfOralRequest,
      @JsonKey(name: 'employee_info')
          EmployeeInfo? employeeInfo,
      @JsonKey(name: 'physician_info')
          RequestingPhysician? physicianInfo,
      @JsonKey(name: 'claims_administrator')
          ClaimsAdministrator? claimsAdministrator,
      @JsonKey(name: 'claims_response')
          ClaimsResponse? claimsResponse,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @JsonKey(name: 'deleted_at')
          DateTime? deletedAt,
      @JsonKey(name: 'requested_treatment')
          List<RequestedTreatment>? requestedTreatment});

  @override
  $EmployeeInfoCopyWith<$Res>? get employeeInfo;
  @override
  $RequestingPhysicianCopyWith<$Res>? get physicianInfo;
  @override
  $ClaimsAdministratorCopyWith<$Res>? get claimsAdministrator;
  @override
  $ClaimsResponseCopyWith<$Res>? get claimsResponse;
}

/// @nodoc
class __$$_RFAModelCopyWithImpl<$Res> extends _$RFAModelCopyWithImpl<$Res>
    implements _$$_RFAModelCopyWith<$Res> {
  __$$_RFAModelCopyWithImpl(
      _$_RFAModel _value, $Res Function(_$_RFAModel) _then)
      : super(_value, (v) => _then(v as _$_RFAModel));

  @override
  _$_RFAModel get _value => super._value as _$_RFAModel;

  @override
  $Res call({
    Object? newRequest = freezed,
    Object? resubmission = freezed,
    Object? expeditedReview = freezed,
    Object? writtenConfirmationOfOralRequest = freezed,
    Object? employeeInfo = freezed,
    Object? physicianInfo = freezed,
    Object? claimsAdministrator = freezed,
    Object? claimsResponse = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? requestedTreatment = freezed,
  }) {
    return _then(_$_RFAModel(
      newRequest: newRequest == freezed
          ? _value.newRequest
          : newRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      resubmission: resubmission == freezed
          ? _value.resubmission
          : resubmission // ignore: cast_nullable_to_non_nullable
              as bool?,
      expeditedReview: expeditedReview == freezed
          ? _value.expeditedReview
          : expeditedReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      writtenConfirmationOfOralRequest: writtenConfirmationOfOralRequest ==
              freezed
          ? _value.writtenConfirmationOfOralRequest
          : writtenConfirmationOfOralRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      employeeInfo: employeeInfo == freezed
          ? _value.employeeInfo
          : employeeInfo // ignore: cast_nullable_to_non_nullable
              as EmployeeInfo?,
      physicianInfo: physicianInfo == freezed
          ? _value.physicianInfo
          : physicianInfo // ignore: cast_nullable_to_non_nullable
              as RequestingPhysician?,
      claimsAdministrator: claimsAdministrator == freezed
          ? _value.claimsAdministrator
          : claimsAdministrator // ignore: cast_nullable_to_non_nullable
              as ClaimsAdministrator?,
      claimsResponse: claimsResponse == freezed
          ? _value.claimsResponse
          : claimsResponse // ignore: cast_nullable_to_non_nullable
              as ClaimsResponse?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestedTreatment: requestedTreatment == freezed
          ? _value._requestedTreatment
          : requestedTreatment // ignore: cast_nullable_to_non_nullable
              as List<RequestedTreatment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RFAModel extends _RFAModel {
  _$_RFAModel(
      {@JsonKey(name: 'new_request')
          this.newRequest = true,
      this.resubmission = false,
      @JsonKey(name: 'expedited_review')
          this.expeditedReview = false,
      @JsonKey(name: 'written_confirmation_of_oral_request')
          this.writtenConfirmationOfOralRequest,
      @JsonKey(name: 'employee_info')
          this.employeeInfo,
      @JsonKey(name: 'physician_info')
          this.physicianInfo,
      @JsonKey(name: 'claims_administrator')
          this.claimsAdministrator,
      @JsonKey(name: 'claims_response')
          this.claimsResponse,
      @JsonKey(name: 'created_at')
          this.createdAt,
      @JsonKey(name: 'updated_at')
          this.updatedAt,
      @JsonKey(name: 'deleted_at')
          this.deletedAt,
      @JsonKey(name: 'requested_treatment')
          final List<RequestedTreatment>? requestedTreatment})
      : _requestedTreatment = requestedTreatment,
        super._();

  factory _$_RFAModel.fromJson(Map<String, dynamic> json) =>
      _$$_RFAModelFromJson(json);

  @override
  @JsonKey(name: 'new_request')
  final bool? newRequest;
  @override
  @JsonKey()
  final bool? resubmission;
  @override
  @JsonKey(name: 'expedited_review')
  final bool? expeditedReview;
  @override
  @JsonKey(name: 'written_confirmation_of_oral_request')
  final bool? writtenConfirmationOfOralRequest;
  @override
  @JsonKey(name: 'employee_info')
  final EmployeeInfo? employeeInfo;
  @override
  @JsonKey(name: 'physician_info')
  final RequestingPhysician? physicianInfo;
  @override
  @JsonKey(name: 'claims_administrator')
  final ClaimsAdministrator? claimsAdministrator;
  @override
  @JsonKey(name: 'claims_response')
  final ClaimsResponse? claimsResponse;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;
  final List<RequestedTreatment>? _requestedTreatment;
  @override
  @JsonKey(name: 'requested_treatment')
  List<RequestedTreatment>? get requestedTreatment {
    final value = _requestedTreatment;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RFAModel(newRequest: $newRequest, resubmission: $resubmission, expeditedReview: $expeditedReview, writtenConfirmationOfOralRequest: $writtenConfirmationOfOralRequest, employeeInfo: $employeeInfo, physicianInfo: $physicianInfo, claimsAdministrator: $claimsAdministrator, claimsResponse: $claimsResponse, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, requestedTreatment: $requestedTreatment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RFAModel &&
            const DeepCollectionEquality()
                .equals(other.newRequest, newRequest) &&
            const DeepCollectionEquality()
                .equals(other.resubmission, resubmission) &&
            const DeepCollectionEquality()
                .equals(other.expeditedReview, expeditedReview) &&
            const DeepCollectionEquality().equals(
                other.writtenConfirmationOfOralRequest,
                writtenConfirmationOfOralRequest) &&
            const DeepCollectionEquality()
                .equals(other.employeeInfo, employeeInfo) &&
            const DeepCollectionEquality()
                .equals(other.physicianInfo, physicianInfo) &&
            const DeepCollectionEquality()
                .equals(other.claimsAdministrator, claimsAdministrator) &&
            const DeepCollectionEquality()
                .equals(other.claimsResponse, claimsResponse) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality()
                .equals(other._requestedTreatment, _requestedTreatment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newRequest),
      const DeepCollectionEquality().hash(resubmission),
      const DeepCollectionEquality().hash(expeditedReview),
      const DeepCollectionEquality().hash(writtenConfirmationOfOralRequest),
      const DeepCollectionEquality().hash(employeeInfo),
      const DeepCollectionEquality().hash(physicianInfo),
      const DeepCollectionEquality().hash(claimsAdministrator),
      const DeepCollectionEquality().hash(claimsResponse),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(_requestedTreatment));

  @JsonKey(ignore: true)
  @override
  _$$_RFAModelCopyWith<_$_RFAModel> get copyWith =>
      __$$_RFAModelCopyWithImpl<_$_RFAModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RFAModelToJson(this);
  }
}

abstract class _RFAModel extends RFAModel {
  factory _RFAModel(
      {@JsonKey(name: 'new_request')
          final bool? newRequest,
      final bool? resubmission,
      @JsonKey(name: 'expedited_review')
          final bool? expeditedReview,
      @JsonKey(name: 'written_confirmation_of_oral_request')
          final bool? writtenConfirmationOfOralRequest,
      @JsonKey(name: 'employee_info')
          final EmployeeInfo? employeeInfo,
      @JsonKey(name: 'physician_info')
          final RequestingPhysician? physicianInfo,
      @JsonKey(name: 'claims_administrator')
          final ClaimsAdministrator? claimsAdministrator,
      @JsonKey(name: 'claims_response')
          final ClaimsResponse? claimsResponse,
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at')
          final DateTime? deletedAt,
      @JsonKey(name: 'requested_treatment')
          final List<RequestedTreatment>? requestedTreatment}) = _$_RFAModel;
  _RFAModel._() : super._();

  factory _RFAModel.fromJson(Map<String, dynamic> json) = _$_RFAModel.fromJson;

  @override
  @JsonKey(name: 'new_request')
  bool? get newRequest => throw _privateConstructorUsedError;
  @override
  bool? get resubmission => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'expedited_review')
  bool? get expeditedReview => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'written_confirmation_of_oral_request')
  bool? get writtenConfirmationOfOralRequest =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'employee_info')
  EmployeeInfo? get employeeInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'physician_info')
  RequestingPhysician? get physicianInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'claims_administrator')
  ClaimsAdministrator? get claimsAdministrator =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'claims_response')
  ClaimsResponse? get claimsResponse => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'requested_treatment')
  List<RequestedTreatment>? get requestedTreatment =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RFAModelCopyWith<_$_RFAModel> get copyWith =>
      throw _privateConstructorUsedError;
}
