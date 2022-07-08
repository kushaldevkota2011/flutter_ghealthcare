// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'occurance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Occurrence _$OccurrenceFromJson(Map<String, dynamic> json) {
  return _Occurrence.fromJson(json);
}

/// @nodoc
mixin _$Occurrence {
  FhirDateTime? get dateTime => throw _privateConstructorUsedError;
  Period? get period => throw _privateConstructorUsedError;
  Timing? get timing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccurrenceCopyWith<Occurrence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccurrenceCopyWith<$Res> {
  factory $OccurrenceCopyWith(
          Occurrence value, $Res Function(Occurrence) then) =
      _$OccurrenceCopyWithImpl<$Res>;
  $Res call({FhirDateTime? dateTime, Period? period, Timing? timing});

  $PeriodCopyWith<$Res>? get period;
  $TimingCopyWith<$Res>? get timing;
}

/// @nodoc
class _$OccurrenceCopyWithImpl<$Res> implements $OccurrenceCopyWith<$Res> {
  _$OccurrenceCopyWithImpl(this._value, this._then);

  final Occurrence _value;
  // ignore: unused_field
  final $Res Function(Occurrence) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? period = freezed,
    Object? timing = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      timing: timing == freezed
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as Timing?,
    ));
  }

  @override
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value));
    });
  }

  @override
  $TimingCopyWith<$Res>? get timing {
    if (_value.timing == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.timing!, (value) {
      return _then(_value.copyWith(timing: value));
    });
  }
}

/// @nodoc
abstract class _$$_OccurrenceCopyWith<$Res>
    implements $OccurrenceCopyWith<$Res> {
  factory _$$_OccurrenceCopyWith(
          _$_Occurrence value, $Res Function(_$_Occurrence) then) =
      __$$_OccurrenceCopyWithImpl<$Res>;
  @override
  $Res call({FhirDateTime? dateTime, Period? period, Timing? timing});

  @override
  $PeriodCopyWith<$Res>? get period;
  @override
  $TimingCopyWith<$Res>? get timing;
}

/// @nodoc
class __$$_OccurrenceCopyWithImpl<$Res> extends _$OccurrenceCopyWithImpl<$Res>
    implements _$$_OccurrenceCopyWith<$Res> {
  __$$_OccurrenceCopyWithImpl(
      _$_Occurrence _value, $Res Function(_$_Occurrence) _then)
      : super(_value, (v) => _then(v as _$_Occurrence));

  @override
  _$_Occurrence get _value => super._value as _$_Occurrence;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? period = freezed,
    Object? timing = freezed,
  }) {
    return _then(_$_Occurrence(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      timing: timing == freezed
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as Timing?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Occurrence extends _Occurrence {
  _$_Occurrence({this.dateTime, this.period, this.timing}) : super._();

  factory _$_Occurrence.fromJson(Map<String, dynamic> json) =>
      _$$_OccurrenceFromJson(json);

  @override
  final FhirDateTime? dateTime;
  @override
  final Period? period;
  @override
  final Timing? timing;

  @override
  String toString() {
    return 'Occurrence(dateTime: $dateTime, period: $period, timing: $timing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Occurrence &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.period, period) &&
            const DeepCollectionEquality().equals(other.timing, timing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(period),
      const DeepCollectionEquality().hash(timing));

  @JsonKey(ignore: true)
  @override
  _$$_OccurrenceCopyWith<_$_Occurrence> get copyWith =>
      __$$_OccurrenceCopyWithImpl<_$_Occurrence>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccurrenceToJson(this);
  }
}

abstract class _Occurrence extends Occurrence {
  factory _Occurrence(
      {final FhirDateTime? dateTime,
      final Period? period,
      final Timing? timing}) = _$_Occurrence;
  _Occurrence._() : super._();

  factory _Occurrence.fromJson(Map<String, dynamic> json) =
      _$_Occurrence.fromJson;

  @override
  FhirDateTime? get dateTime => throw _privateConstructorUsedError;
  @override
  Period? get period => throw _privateConstructorUsedError;
  @override
  Timing? get timing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OccurrenceCopyWith<_$_Occurrence> get copyWith =>
      throw _privateConstructorUsedError;
}
