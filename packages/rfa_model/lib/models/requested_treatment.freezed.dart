// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'requested_treatment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestedTreatment _$RequestedTreatmentFromJson(Map<String, dynamic> json) {
  return _RequestedTreatment.fromJson(json);
}

/// @nodoc
mixin _$RequestedTreatment {
  String? get diagnosis => throw _privateConstructorUsedError;
  @JsonKey(name: 'icd_code')
  String? get icdCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_requested')
  String? get serviceRequested => throw _privateConstructorUsedError;
  @JsonKey(name: 'cpt_or_hcpcs_code')
  String? get cptOrHcpcsCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_information')
  String? get otherInformation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestedTreatmentCopyWith<RequestedTreatment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestedTreatmentCopyWith<$Res> {
  factory $RequestedTreatmentCopyWith(
          RequestedTreatment value, $Res Function(RequestedTreatment) then) =
      _$RequestedTreatmentCopyWithImpl<$Res>;
  $Res call(
      {String? diagnosis,
      @JsonKey(name: 'icd_code') String? icdCode,
      @JsonKey(name: 'service_requested') String? serviceRequested,
      @JsonKey(name: 'cpt_or_hcpcs_code') String? cptOrHcpcsCode,
      @JsonKey(name: 'other_information') String? otherInformation});
}

/// @nodoc
class _$RequestedTreatmentCopyWithImpl<$Res>
    implements $RequestedTreatmentCopyWith<$Res> {
  _$RequestedTreatmentCopyWithImpl(this._value, this._then);

  final RequestedTreatment _value;
  // ignore: unused_field
  final $Res Function(RequestedTreatment) _then;

  @override
  $Res call({
    Object? diagnosis = freezed,
    Object? icdCode = freezed,
    Object? serviceRequested = freezed,
    Object? cptOrHcpcsCode = freezed,
    Object? otherInformation = freezed,
  }) {
    return _then(_value.copyWith(
      diagnosis: diagnosis == freezed
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String?,
      icdCode: icdCode == freezed
          ? _value.icdCode
          : icdCode // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceRequested: serviceRequested == freezed
          ? _value.serviceRequested
          : serviceRequested // ignore: cast_nullable_to_non_nullable
              as String?,
      cptOrHcpcsCode: cptOrHcpcsCode == freezed
          ? _value.cptOrHcpcsCode
          : cptOrHcpcsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInformation: otherInformation == freezed
          ? _value.otherInformation
          : otherInformation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RequestedTreatmentCopyWith<$Res>
    implements $RequestedTreatmentCopyWith<$Res> {
  factory _$$_RequestedTreatmentCopyWith(_$_RequestedTreatment value,
          $Res Function(_$_RequestedTreatment) then) =
      __$$_RequestedTreatmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? diagnosis,
      @JsonKey(name: 'icd_code') String? icdCode,
      @JsonKey(name: 'service_requested') String? serviceRequested,
      @JsonKey(name: 'cpt_or_hcpcs_code') String? cptOrHcpcsCode,
      @JsonKey(name: 'other_information') String? otherInformation});
}

/// @nodoc
class __$$_RequestedTreatmentCopyWithImpl<$Res>
    extends _$RequestedTreatmentCopyWithImpl<$Res>
    implements _$$_RequestedTreatmentCopyWith<$Res> {
  __$$_RequestedTreatmentCopyWithImpl(
      _$_RequestedTreatment _value, $Res Function(_$_RequestedTreatment) _then)
      : super(_value, (v) => _then(v as _$_RequestedTreatment));

  @override
  _$_RequestedTreatment get _value => super._value as _$_RequestedTreatment;

  @override
  $Res call({
    Object? diagnosis = freezed,
    Object? icdCode = freezed,
    Object? serviceRequested = freezed,
    Object? cptOrHcpcsCode = freezed,
    Object? otherInformation = freezed,
  }) {
    return _then(_$_RequestedTreatment(
      diagnosis: diagnosis == freezed
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String?,
      icdCode: icdCode == freezed
          ? _value.icdCode
          : icdCode // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceRequested: serviceRequested == freezed
          ? _value.serviceRequested
          : serviceRequested // ignore: cast_nullable_to_non_nullable
              as String?,
      cptOrHcpcsCode: cptOrHcpcsCode == freezed
          ? _value.cptOrHcpcsCode
          : cptOrHcpcsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInformation: otherInformation == freezed
          ? _value.otherInformation
          : otherInformation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestedTreatment extends _RequestedTreatment {
  _$_RequestedTreatment(
      {this.diagnosis,
      @JsonKey(name: 'icd_code') this.icdCode,
      @JsonKey(name: 'service_requested') this.serviceRequested,
      @JsonKey(name: 'cpt_or_hcpcs_code') this.cptOrHcpcsCode,
      @JsonKey(name: 'other_information') this.otherInformation})
      : super._();

  factory _$_RequestedTreatment.fromJson(Map<String, dynamic> json) =>
      _$$_RequestedTreatmentFromJson(json);

  @override
  final String? diagnosis;
  @override
  @JsonKey(name: 'icd_code')
  final String? icdCode;
  @override
  @JsonKey(name: 'service_requested')
  final String? serviceRequested;
  @override
  @JsonKey(name: 'cpt_or_hcpcs_code')
  final String? cptOrHcpcsCode;
  @override
  @JsonKey(name: 'other_information')
  final String? otherInformation;

  @override
  String toString() {
    return 'RequestedTreatment(diagnosis: $diagnosis, icdCode: $icdCode, serviceRequested: $serviceRequested, cptOrHcpcsCode: $cptOrHcpcsCode, otherInformation: $otherInformation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestedTreatment &&
            const DeepCollectionEquality().equals(other.diagnosis, diagnosis) &&
            const DeepCollectionEquality().equals(other.icdCode, icdCode) &&
            const DeepCollectionEquality()
                .equals(other.serviceRequested, serviceRequested) &&
            const DeepCollectionEquality()
                .equals(other.cptOrHcpcsCode, cptOrHcpcsCode) &&
            const DeepCollectionEquality()
                .equals(other.otherInformation, otherInformation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(diagnosis),
      const DeepCollectionEquality().hash(icdCode),
      const DeepCollectionEquality().hash(serviceRequested),
      const DeepCollectionEquality().hash(cptOrHcpcsCode),
      const DeepCollectionEquality().hash(otherInformation));

  @JsonKey(ignore: true)
  @override
  _$$_RequestedTreatmentCopyWith<_$_RequestedTreatment> get copyWith =>
      __$$_RequestedTreatmentCopyWithImpl<_$_RequestedTreatment>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestedTreatmentToJson(this);
  }
}

abstract class _RequestedTreatment extends RequestedTreatment {
  factory _RequestedTreatment(
          {final String? diagnosis,
          @JsonKey(name: 'icd_code') final String? icdCode,
          @JsonKey(name: 'service_requested') final String? serviceRequested,
          @JsonKey(name: 'cpt_or_hcpcs_code') final String? cptOrHcpcsCode,
          @JsonKey(name: 'other_information') final String? otherInformation}) =
      _$_RequestedTreatment;
  _RequestedTreatment._() : super._();

  factory _RequestedTreatment.fromJson(Map<String, dynamic> json) =
      _$_RequestedTreatment.fromJson;

  @override
  String? get diagnosis => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'icd_code')
  String? get icdCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'service_requested')
  String? get serviceRequested => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cpt_or_hcpcs_code')
  String? get cptOrHcpcsCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'other_information')
  String? get otherInformation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RequestedTreatmentCopyWith<_$_RequestedTreatment> get copyWith =>
      throw _privateConstructorUsedError;
}
