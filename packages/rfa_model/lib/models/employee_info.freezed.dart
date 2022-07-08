// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeInfo _$EmployeeInfoFromJson(Map<String, dynamic> json) {
  return _EmployeeInfo.fromJson(json);
}

/// @nodoc
mixin _$EmployeeInfo {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_injury')
  DateTime? get dateOfInjury => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  DateTime? get datetOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'claim_number')
  String? get claimNumber => throw _privateConstructorUsedError;
  String? get employer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeInfoCopyWith<EmployeeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeInfoCopyWith<$Res> {
  factory $EmployeeInfoCopyWith(
          EmployeeInfo value, $Res Function(EmployeeInfo) then) =
      _$EmployeeInfoCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      @JsonKey(name: 'date_of_injury') DateTime? dateOfInjury,
      @JsonKey(name: 'date_of_birth') DateTime? datetOfBirth,
      @JsonKey(name: 'claim_number') String? claimNumber,
      String? employer});
}

/// @nodoc
class _$EmployeeInfoCopyWithImpl<$Res> implements $EmployeeInfoCopyWith<$Res> {
  _$EmployeeInfoCopyWithImpl(this._value, this._then);

  final EmployeeInfo _value;
  // ignore: unused_field
  final $Res Function(EmployeeInfo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? dateOfInjury = freezed,
    Object? datetOfBirth = freezed,
    Object? claimNumber = freezed,
    Object? employer = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfInjury: dateOfInjury == freezed
          ? _value.dateOfInjury
          : dateOfInjury // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      datetOfBirth: datetOfBirth == freezed
          ? _value.datetOfBirth
          : datetOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      claimNumber: claimNumber == freezed
          ? _value.claimNumber
          : claimNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      employer: employer == freezed
          ? _value.employer
          : employer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeeInfoCopyWith<$Res>
    implements $EmployeeInfoCopyWith<$Res> {
  factory _$$_EmployeeInfoCopyWith(
          _$_EmployeeInfo value, $Res Function(_$_EmployeeInfo) then) =
      __$$_EmployeeInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      @JsonKey(name: 'date_of_injury') DateTime? dateOfInjury,
      @JsonKey(name: 'date_of_birth') DateTime? datetOfBirth,
      @JsonKey(name: 'claim_number') String? claimNumber,
      String? employer});
}

/// @nodoc
class __$$_EmployeeInfoCopyWithImpl<$Res>
    extends _$EmployeeInfoCopyWithImpl<$Res>
    implements _$$_EmployeeInfoCopyWith<$Res> {
  __$$_EmployeeInfoCopyWithImpl(
      _$_EmployeeInfo _value, $Res Function(_$_EmployeeInfo) _then)
      : super(_value, (v) => _then(v as _$_EmployeeInfo));

  @override
  _$_EmployeeInfo get _value => super._value as _$_EmployeeInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? dateOfInjury = freezed,
    Object? datetOfBirth = freezed,
    Object? claimNumber = freezed,
    Object? employer = freezed,
  }) {
    return _then(_$_EmployeeInfo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfInjury: dateOfInjury == freezed
          ? _value.dateOfInjury
          : dateOfInjury // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      datetOfBirth: datetOfBirth == freezed
          ? _value.datetOfBirth
          : datetOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      claimNumber: claimNumber == freezed
          ? _value.claimNumber
          : claimNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      employer: employer == freezed
          ? _value.employer
          : employer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeInfo extends _EmployeeInfo {
  _$_EmployeeInfo(
      {this.name,
      @JsonKey(name: 'date_of_injury') this.dateOfInjury,
      @JsonKey(name: 'date_of_birth') this.datetOfBirth,
      @JsonKey(name: 'claim_number') this.claimNumber,
      this.employer})
      : super._();

  factory _$_EmployeeInfo.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeInfoFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'date_of_injury')
  final DateTime? dateOfInjury;
  @override
  @JsonKey(name: 'date_of_birth')
  final DateTime? datetOfBirth;
  @override
  @JsonKey(name: 'claim_number')
  final String? claimNumber;
  @override
  final String? employer;

  @override
  String toString() {
    return 'EmployeeInfo(name: $name, dateOfInjury: $dateOfInjury, datetOfBirth: $datetOfBirth, claimNumber: $claimNumber, employer: $employer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeInfo &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.dateOfInjury, dateOfInjury) &&
            const DeepCollectionEquality()
                .equals(other.datetOfBirth, datetOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.claimNumber, claimNumber) &&
            const DeepCollectionEquality().equals(other.employer, employer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(dateOfInjury),
      const DeepCollectionEquality().hash(datetOfBirth),
      const DeepCollectionEquality().hash(claimNumber),
      const DeepCollectionEquality().hash(employer));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeInfoCopyWith<_$_EmployeeInfo> get copyWith =>
      __$$_EmployeeInfoCopyWithImpl<_$_EmployeeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeInfoToJson(this);
  }
}

abstract class _EmployeeInfo extends EmployeeInfo {
  factory _EmployeeInfo(
      {final String? name,
      @JsonKey(name: 'date_of_injury') final DateTime? dateOfInjury,
      @JsonKey(name: 'date_of_birth') final DateTime? datetOfBirth,
      @JsonKey(name: 'claim_number') final String? claimNumber,
      final String? employer}) = _$_EmployeeInfo;
  _EmployeeInfo._() : super._();

  factory _EmployeeInfo.fromJson(Map<String, dynamic> json) =
      _$_EmployeeInfo.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date_of_injury')
  DateTime? get dateOfInjury => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date_of_birth')
  DateTime? get datetOfBirth => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'claim_number')
  String? get claimNumber => throw _privateConstructorUsedError;
  @override
  String? get employer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeInfoCopyWith<_$_EmployeeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
