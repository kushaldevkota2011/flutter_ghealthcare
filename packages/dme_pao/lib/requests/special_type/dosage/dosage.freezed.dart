// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dosage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dosage _$DosageFromJson(Map<String, dynamic> json) {
  return _Dosage.fromJson(json);
}

/// @nodoc
mixin _$Dosage {
  Integer? get sequance => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  List<CodeableConcept>? get additionalInstruction =>
      throw _privateConstructorUsedError;
  String? get patientInstruction => throw _privateConstructorUsedError;
  Timing? get timing => throw _privateConstructorUsedError;
  AsNeeded? get asNeeded => throw _privateConstructorUsedError;
  CodeableConcept? get site => throw _privateConstructorUsedError;
  CodeableConcept? get route => throw _privateConstructorUsedError;
  CodeableConcept? get methode => throw _privateConstructorUsedError;
  List<DosageAndRate>? get doseAndRate => throw _privateConstructorUsedError;
  Ratio? get maxDosePerPeriod => throw _privateConstructorUsedError;
  Quantity? get maxDosePerAdministration => throw _privateConstructorUsedError;
  Quantity? get maxDosePerLifetime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DosageCopyWith<Dosage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DosageCopyWith<$Res> {
  factory $DosageCopyWith(Dosage value, $Res Function(Dosage) then) =
      _$DosageCopyWithImpl<$Res>;
  $Res call(
      {Integer? sequance,
      String? text,
      List<CodeableConcept>? additionalInstruction,
      String? patientInstruction,
      Timing? timing,
      AsNeeded? asNeeded,
      CodeableConcept? site,
      CodeableConcept? route,
      CodeableConcept? methode,
      List<DosageAndRate>? doseAndRate,
      Ratio? maxDosePerPeriod,
      Quantity? maxDosePerAdministration,
      Quantity? maxDosePerLifetime});

  $TimingCopyWith<$Res>? get timing;
  $AsNeededCopyWith<$Res>? get asNeeded;
  $CodeableConceptCopyWith<$Res>? get site;
  $CodeableConceptCopyWith<$Res>? get route;
  $CodeableConceptCopyWith<$Res>? get methode;
  $RatioCopyWith<$Res>? get maxDosePerPeriod;
  $QuantityCopyWith<$Res>? get maxDosePerAdministration;
  $QuantityCopyWith<$Res>? get maxDosePerLifetime;
}

/// @nodoc
class _$DosageCopyWithImpl<$Res> implements $DosageCopyWith<$Res> {
  _$DosageCopyWithImpl(this._value, this._then);

  final Dosage _value;
  // ignore: unused_field
  final $Res Function(Dosage) _then;

  @override
  $Res call({
    Object? sequance = freezed,
    Object? text = freezed,
    Object? additionalInstruction = freezed,
    Object? patientInstruction = freezed,
    Object? timing = freezed,
    Object? asNeeded = freezed,
    Object? site = freezed,
    Object? route = freezed,
    Object? methode = freezed,
    Object? doseAndRate = freezed,
    Object? maxDosePerPeriod = freezed,
    Object? maxDosePerAdministration = freezed,
    Object? maxDosePerLifetime = freezed,
  }) {
    return _then(_value.copyWith(
      sequance: sequance == freezed
          ? _value.sequance
          : sequance // ignore: cast_nullable_to_non_nullable
              as Integer?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInstruction: additionalInstruction == freezed
          ? _value.additionalInstruction
          : additionalInstruction // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      patientInstruction: patientInstruction == freezed
          ? _value.patientInstruction
          : patientInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      timing: timing == freezed
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as Timing?,
      asNeeded: asNeeded == freezed
          ? _value.asNeeded
          : asNeeded // ignore: cast_nullable_to_non_nullable
              as AsNeeded?,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      methode: methode == freezed
          ? _value.methode
          : methode // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      doseAndRate: doseAndRate == freezed
          ? _value.doseAndRate
          : doseAndRate // ignore: cast_nullable_to_non_nullable
              as List<DosageAndRate>?,
      maxDosePerPeriod: maxDosePerPeriod == freezed
          ? _value.maxDosePerPeriod
          : maxDosePerPeriod // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      maxDosePerAdministration: maxDosePerAdministration == freezed
          ? _value.maxDosePerAdministration
          : maxDosePerAdministration // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      maxDosePerLifetime: maxDosePerLifetime == freezed
          ? _value.maxDosePerLifetime
          : maxDosePerLifetime // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
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

  @override
  $AsNeededCopyWith<$Res>? get asNeeded {
    if (_value.asNeeded == null) {
      return null;
    }

    return $AsNeededCopyWith<$Res>(_value.asNeeded!, (value) {
      return _then(_value.copyWith(asNeeded: value));
    });
  }

  @override
  $CodeableConceptCopyWith<$Res>? get site {
    if (_value.site == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.site!, (value) {
      return _then(_value.copyWith(site: value));
    });
  }

  @override
  $CodeableConceptCopyWith<$Res>? get route {
    if (_value.route == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.route!, (value) {
      return _then(_value.copyWith(route: value));
    });
  }

  @override
  $CodeableConceptCopyWith<$Res>? get methode {
    if (_value.methode == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.methode!, (value) {
      return _then(_value.copyWith(methode: value));
    });
  }

  @override
  $RatioCopyWith<$Res>? get maxDosePerPeriod {
    if (_value.maxDosePerPeriod == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.maxDosePerPeriod!, (value) {
      return _then(_value.copyWith(maxDosePerPeriod: value));
    });
  }

  @override
  $QuantityCopyWith<$Res>? get maxDosePerAdministration {
    if (_value.maxDosePerAdministration == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.maxDosePerAdministration!, (value) {
      return _then(_value.copyWith(maxDosePerAdministration: value));
    });
  }

  @override
  $QuantityCopyWith<$Res>? get maxDosePerLifetime {
    if (_value.maxDosePerLifetime == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.maxDosePerLifetime!, (value) {
      return _then(_value.copyWith(maxDosePerLifetime: value));
    });
  }
}

/// @nodoc
abstract class _$$_DosageCopyWith<$Res> implements $DosageCopyWith<$Res> {
  factory _$$_DosageCopyWith(_$_Dosage value, $Res Function(_$_Dosage) then) =
      __$$_DosageCopyWithImpl<$Res>;
  @override
  $Res call(
      {Integer? sequance,
      String? text,
      List<CodeableConcept>? additionalInstruction,
      String? patientInstruction,
      Timing? timing,
      AsNeeded? asNeeded,
      CodeableConcept? site,
      CodeableConcept? route,
      CodeableConcept? methode,
      List<DosageAndRate>? doseAndRate,
      Ratio? maxDosePerPeriod,
      Quantity? maxDosePerAdministration,
      Quantity? maxDosePerLifetime});

  @override
  $TimingCopyWith<$Res>? get timing;
  @override
  $AsNeededCopyWith<$Res>? get asNeeded;
  @override
  $CodeableConceptCopyWith<$Res>? get site;
  @override
  $CodeableConceptCopyWith<$Res>? get route;
  @override
  $CodeableConceptCopyWith<$Res>? get methode;
  @override
  $RatioCopyWith<$Res>? get maxDosePerPeriod;
  @override
  $QuantityCopyWith<$Res>? get maxDosePerAdministration;
  @override
  $QuantityCopyWith<$Res>? get maxDosePerLifetime;
}

/// @nodoc
class __$$_DosageCopyWithImpl<$Res> extends _$DosageCopyWithImpl<$Res>
    implements _$$_DosageCopyWith<$Res> {
  __$$_DosageCopyWithImpl(_$_Dosage _value, $Res Function(_$_Dosage) _then)
      : super(_value, (v) => _then(v as _$_Dosage));

  @override
  _$_Dosage get _value => super._value as _$_Dosage;

  @override
  $Res call({
    Object? sequance = freezed,
    Object? text = freezed,
    Object? additionalInstruction = freezed,
    Object? patientInstruction = freezed,
    Object? timing = freezed,
    Object? asNeeded = freezed,
    Object? site = freezed,
    Object? route = freezed,
    Object? methode = freezed,
    Object? doseAndRate = freezed,
    Object? maxDosePerPeriod = freezed,
    Object? maxDosePerAdministration = freezed,
    Object? maxDosePerLifetime = freezed,
  }) {
    return _then(_$_Dosage(
      sequance: sequance == freezed
          ? _value.sequance
          : sequance // ignore: cast_nullable_to_non_nullable
              as Integer?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInstruction: additionalInstruction == freezed
          ? _value._additionalInstruction
          : additionalInstruction // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      patientInstruction: patientInstruction == freezed
          ? _value.patientInstruction
          : patientInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      timing: timing == freezed
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as Timing?,
      asNeeded: asNeeded == freezed
          ? _value.asNeeded
          : asNeeded // ignore: cast_nullable_to_non_nullable
              as AsNeeded?,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      methode: methode == freezed
          ? _value.methode
          : methode // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      doseAndRate: doseAndRate == freezed
          ? _value._doseAndRate
          : doseAndRate // ignore: cast_nullable_to_non_nullable
              as List<DosageAndRate>?,
      maxDosePerPeriod: maxDosePerPeriod == freezed
          ? _value.maxDosePerPeriod
          : maxDosePerPeriod // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      maxDosePerAdministration: maxDosePerAdministration == freezed
          ? _value.maxDosePerAdministration
          : maxDosePerAdministration // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      maxDosePerLifetime: maxDosePerLifetime == freezed
          ? _value.maxDosePerLifetime
          : maxDosePerLifetime // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dosage extends _Dosage {
  _$_Dosage(
      {this.sequance,
      this.text,
      final List<CodeableConcept>? additionalInstruction,
      this.patientInstruction,
      this.timing,
      this.asNeeded,
      this.site,
      this.route,
      this.methode,
      final List<DosageAndRate>? doseAndRate,
      this.maxDosePerPeriod,
      this.maxDosePerAdministration,
      this.maxDosePerLifetime})
      : _additionalInstruction = additionalInstruction,
        _doseAndRate = doseAndRate,
        super._();

  factory _$_Dosage.fromJson(Map<String, dynamic> json) =>
      _$$_DosageFromJson(json);

  @override
  final Integer? sequance;
  @override
  final String? text;
  final List<CodeableConcept>? _additionalInstruction;
  @override
  List<CodeableConcept>? get additionalInstruction {
    final value = _additionalInstruction;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? patientInstruction;
  @override
  final Timing? timing;
  @override
  final AsNeeded? asNeeded;
  @override
  final CodeableConcept? site;
  @override
  final CodeableConcept? route;
  @override
  final CodeableConcept? methode;
  final List<DosageAndRate>? _doseAndRate;
  @override
  List<DosageAndRate>? get doseAndRate {
    final value = _doseAndRate;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Ratio? maxDosePerPeriod;
  @override
  final Quantity? maxDosePerAdministration;
  @override
  final Quantity? maxDosePerLifetime;

  @override
  String toString() {
    return 'Dosage(sequance: $sequance, text: $text, additionalInstruction: $additionalInstruction, patientInstruction: $patientInstruction, timing: $timing, asNeeded: $asNeeded, site: $site, route: $route, methode: $methode, doseAndRate: $doseAndRate, maxDosePerPeriod: $maxDosePerPeriod, maxDosePerAdministration: $maxDosePerAdministration, maxDosePerLifetime: $maxDosePerLifetime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dosage &&
            const DeepCollectionEquality().equals(other.sequance, sequance) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other._additionalInstruction, _additionalInstruction) &&
            const DeepCollectionEquality()
                .equals(other.patientInstruction, patientInstruction) &&
            const DeepCollectionEquality().equals(other.timing, timing) &&
            const DeepCollectionEquality().equals(other.asNeeded, asNeeded) &&
            const DeepCollectionEquality().equals(other.site, site) &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality().equals(other.methode, methode) &&
            const DeepCollectionEquality()
                .equals(other._doseAndRate, _doseAndRate) &&
            const DeepCollectionEquality()
                .equals(other.maxDosePerPeriod, maxDosePerPeriod) &&
            const DeepCollectionEquality().equals(
                other.maxDosePerAdministration, maxDosePerAdministration) &&
            const DeepCollectionEquality()
                .equals(other.maxDosePerLifetime, maxDosePerLifetime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sequance),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(_additionalInstruction),
      const DeepCollectionEquality().hash(patientInstruction),
      const DeepCollectionEquality().hash(timing),
      const DeepCollectionEquality().hash(asNeeded),
      const DeepCollectionEquality().hash(site),
      const DeepCollectionEquality().hash(route),
      const DeepCollectionEquality().hash(methode),
      const DeepCollectionEquality().hash(_doseAndRate),
      const DeepCollectionEquality().hash(maxDosePerPeriod),
      const DeepCollectionEquality().hash(maxDosePerAdministration),
      const DeepCollectionEquality().hash(maxDosePerLifetime));

  @JsonKey(ignore: true)
  @override
  _$$_DosageCopyWith<_$_Dosage> get copyWith =>
      __$$_DosageCopyWithImpl<_$_Dosage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DosageToJson(this);
  }
}

abstract class _Dosage extends Dosage {
  factory _Dosage(
      {final Integer? sequance,
      final String? text,
      final List<CodeableConcept>? additionalInstruction,
      final String? patientInstruction,
      final Timing? timing,
      final AsNeeded? asNeeded,
      final CodeableConcept? site,
      final CodeableConcept? route,
      final CodeableConcept? methode,
      final List<DosageAndRate>? doseAndRate,
      final Ratio? maxDosePerPeriod,
      final Quantity? maxDosePerAdministration,
      final Quantity? maxDosePerLifetime}) = _$_Dosage;
  _Dosage._() : super._();

  factory _Dosage.fromJson(Map<String, dynamic> json) = _$_Dosage.fromJson;

  @override
  Integer? get sequance => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  List<CodeableConcept>? get additionalInstruction =>
      throw _privateConstructorUsedError;
  @override
  String? get patientInstruction => throw _privateConstructorUsedError;
  @override
  Timing? get timing => throw _privateConstructorUsedError;
  @override
  AsNeeded? get asNeeded => throw _privateConstructorUsedError;
  @override
  CodeableConcept? get site => throw _privateConstructorUsedError;
  @override
  CodeableConcept? get route => throw _privateConstructorUsedError;
  @override
  CodeableConcept? get methode => throw _privateConstructorUsedError;
  @override
  List<DosageAndRate>? get doseAndRate => throw _privateConstructorUsedError;
  @override
  Ratio? get maxDosePerPeriod => throw _privateConstructorUsedError;
  @override
  Quantity? get maxDosePerAdministration => throw _privateConstructorUsedError;
  @override
  Quantity? get maxDosePerLifetime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DosageCopyWith<_$_Dosage> get copyWith =>
      throw _privateConstructorUsedError;
}

DosageAndRate _$DosageAndRateFromJson(Map<String, dynamic> json) {
  return _DosageAndRate.fromJson(json);
}

/// @nodoc
mixin _$DosageAndRate {
  CodeableConcept? get type => throw _privateConstructorUsedError;
  DosageAndRateDosage? get dose => throw _privateConstructorUsedError;
  DosageAndRateRate? get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DosageAndRateCopyWith<DosageAndRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DosageAndRateCopyWith<$Res> {
  factory $DosageAndRateCopyWith(
          DosageAndRate value, $Res Function(DosageAndRate) then) =
      _$DosageAndRateCopyWithImpl<$Res>;
  $Res call(
      {CodeableConcept? type,
      DosageAndRateDosage? dose,
      DosageAndRateRate? rate});

  $CodeableConceptCopyWith<$Res>? get type;
  $DosageAndRateDosageCopyWith<$Res>? get dose;
  $DosageAndRateRateCopyWith<$Res>? get rate;
}

/// @nodoc
class _$DosageAndRateCopyWithImpl<$Res>
    implements $DosageAndRateCopyWith<$Res> {
  _$DosageAndRateCopyWithImpl(this._value, this._then);

  final DosageAndRate _value;
  // ignore: unused_field
  final $Res Function(DosageAndRate) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? dose = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      dose: dose == freezed
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as DosageAndRateDosage?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as DosageAndRateRate?,
    ));
  }

  @override
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value));
    });
  }

  @override
  $DosageAndRateDosageCopyWith<$Res>? get dose {
    if (_value.dose == null) {
      return null;
    }

    return $DosageAndRateDosageCopyWith<$Res>(_value.dose!, (value) {
      return _then(_value.copyWith(dose: value));
    });
  }

  @override
  $DosageAndRateRateCopyWith<$Res>? get rate {
    if (_value.rate == null) {
      return null;
    }

    return $DosageAndRateRateCopyWith<$Res>(_value.rate!, (value) {
      return _then(_value.copyWith(rate: value));
    });
  }
}

/// @nodoc
abstract class _$$_DosageAndRateCopyWith<$Res>
    implements $DosageAndRateCopyWith<$Res> {
  factory _$$_DosageAndRateCopyWith(
          _$_DosageAndRate value, $Res Function(_$_DosageAndRate) then) =
      __$$_DosageAndRateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CodeableConcept? type,
      DosageAndRateDosage? dose,
      DosageAndRateRate? rate});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $DosageAndRateDosageCopyWith<$Res>? get dose;
  @override
  $DosageAndRateRateCopyWith<$Res>? get rate;
}

/// @nodoc
class __$$_DosageAndRateCopyWithImpl<$Res>
    extends _$DosageAndRateCopyWithImpl<$Res>
    implements _$$_DosageAndRateCopyWith<$Res> {
  __$$_DosageAndRateCopyWithImpl(
      _$_DosageAndRate _value, $Res Function(_$_DosageAndRate) _then)
      : super(_value, (v) => _then(v as _$_DosageAndRate));

  @override
  _$_DosageAndRate get _value => super._value as _$_DosageAndRate;

  @override
  $Res call({
    Object? type = freezed,
    Object? dose = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$_DosageAndRate(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      dose: dose == freezed
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as DosageAndRateDosage?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as DosageAndRateRate?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DosageAndRate extends _DosageAndRate {
  _$_DosageAndRate({this.type, this.dose, this.rate}) : super._();

  factory _$_DosageAndRate.fromJson(Map<String, dynamic> json) =>
      _$$_DosageAndRateFromJson(json);

  @override
  final CodeableConcept? type;
  @override
  final DosageAndRateDosage? dose;
  @override
  final DosageAndRateRate? rate;

  @override
  String toString() {
    return 'DosageAndRate(type: $type, dose: $dose, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DosageAndRate &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.dose, dose) &&
            const DeepCollectionEquality().equals(other.rate, rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(dose),
      const DeepCollectionEquality().hash(rate));

  @JsonKey(ignore: true)
  @override
  _$$_DosageAndRateCopyWith<_$_DosageAndRate> get copyWith =>
      __$$_DosageAndRateCopyWithImpl<_$_DosageAndRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DosageAndRateToJson(this);
  }
}

abstract class _DosageAndRate extends DosageAndRate {
  factory _DosageAndRate(
      {final CodeableConcept? type,
      final DosageAndRateDosage? dose,
      final DosageAndRateRate? rate}) = _$_DosageAndRate;
  _DosageAndRate._() : super._();

  factory _DosageAndRate.fromJson(Map<String, dynamic> json) =
      _$_DosageAndRate.fromJson;

  @override
  CodeableConcept? get type => throw _privateConstructorUsedError;
  @override
  DosageAndRateDosage? get dose => throw _privateConstructorUsedError;
  @override
  DosageAndRateRate? get rate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DosageAndRateCopyWith<_$_DosageAndRate> get copyWith =>
      throw _privateConstructorUsedError;
}

DosageAndRateDosage _$DosageAndRateDosageFromJson(Map<String, dynamic> json) {
  return _DosageAndRateDosage.fromJson(json);
}

/// @nodoc
mixin _$DosageAndRateDosage {
  @JsonKey(name: 'Ratio')
  Ratio? get ratio => throw _privateConstructorUsedError;
  @JsonKey(name: 'Range')
  Range? get range => throw _privateConstructorUsedError;
  @JsonKey(name: 'Quantity')
  Quantity? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DosageAndRateDosageCopyWith<DosageAndRateDosage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DosageAndRateDosageCopyWith<$Res> {
  factory $DosageAndRateDosageCopyWith(
          DosageAndRateDosage value, $Res Function(DosageAndRateDosage) then) =
      _$DosageAndRateDosageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Ratio') Ratio? ratio,
      @JsonKey(name: 'Range') Range? range,
      @JsonKey(name: 'Quantity') Quantity? quantity});

  $RatioCopyWith<$Res>? get ratio;
  $RangeCopyWith<$Res>? get range;
  $QuantityCopyWith<$Res>? get quantity;
}

/// @nodoc
class _$DosageAndRateDosageCopyWithImpl<$Res>
    implements $DosageAndRateDosageCopyWith<$Res> {
  _$DosageAndRateDosageCopyWithImpl(this._value, this._then);

  final DosageAndRateDosage _value;
  // ignore: unused_field
  final $Res Function(DosageAndRateDosage) _then;

  @override
  $Res call({
    Object? ratio = freezed,
    Object? range = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      ratio: ratio == freezed
          ? _value.ratio
          : ratio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }

  @override
  $RatioCopyWith<$Res>? get ratio {
    if (_value.ratio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.ratio!, (value) {
      return _then(_value.copyWith(ratio: value));
    });
  }

  @override
  $RangeCopyWith<$Res>? get range {
    if (_value.range == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.range!, (value) {
      return _then(_value.copyWith(range: value));
    });
  }

  @override
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value));
    });
  }
}

/// @nodoc
abstract class _$$_DosageAndRateDosageCopyWith<$Res>
    implements $DosageAndRateDosageCopyWith<$Res> {
  factory _$$_DosageAndRateDosageCopyWith(_$_DosageAndRateDosage value,
          $Res Function(_$_DosageAndRateDosage) then) =
      __$$_DosageAndRateDosageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Ratio') Ratio? ratio,
      @JsonKey(name: 'Range') Range? range,
      @JsonKey(name: 'Quantity') Quantity? quantity});

  @override
  $RatioCopyWith<$Res>? get ratio;
  @override
  $RangeCopyWith<$Res>? get range;
  @override
  $QuantityCopyWith<$Res>? get quantity;
}

/// @nodoc
class __$$_DosageAndRateDosageCopyWithImpl<$Res>
    extends _$DosageAndRateDosageCopyWithImpl<$Res>
    implements _$$_DosageAndRateDosageCopyWith<$Res> {
  __$$_DosageAndRateDosageCopyWithImpl(_$_DosageAndRateDosage _value,
      $Res Function(_$_DosageAndRateDosage) _then)
      : super(_value, (v) => _then(v as _$_DosageAndRateDosage));

  @override
  _$_DosageAndRateDosage get _value => super._value as _$_DosageAndRateDosage;

  @override
  $Res call({
    Object? ratio = freezed,
    Object? range = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_DosageAndRateDosage(
      ratio: ratio == freezed
          ? _value.ratio
          : ratio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DosageAndRateDosage extends _DosageAndRateDosage {
  _$_DosageAndRateDosage(
      {@JsonKey(name: 'Ratio') this.ratio,
      @JsonKey(name: 'Range') this.range,
      @JsonKey(name: 'Quantity') this.quantity})
      : super._();

  factory _$_DosageAndRateDosage.fromJson(Map<String, dynamic> json) =>
      _$$_DosageAndRateDosageFromJson(json);

  @override
  @JsonKey(name: 'Ratio')
  final Ratio? ratio;
  @override
  @JsonKey(name: 'Range')
  final Range? range;
  @override
  @JsonKey(name: 'Quantity')
  final Quantity? quantity;

  @override
  String toString() {
    return 'DosageAndRateDosage(ratio: $ratio, range: $range, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DosageAndRateDosage &&
            const DeepCollectionEquality().equals(other.ratio, ratio) &&
            const DeepCollectionEquality().equals(other.range, range) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ratio),
      const DeepCollectionEquality().hash(range),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_DosageAndRateDosageCopyWith<_$_DosageAndRateDosage> get copyWith =>
      __$$_DosageAndRateDosageCopyWithImpl<_$_DosageAndRateDosage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DosageAndRateDosageToJson(this);
  }
}

abstract class _DosageAndRateDosage extends DosageAndRateDosage {
  factory _DosageAndRateDosage(
          {@JsonKey(name: 'Ratio') final Ratio? ratio,
          @JsonKey(name: 'Range') final Range? range,
          @JsonKey(name: 'Quantity') final Quantity? quantity}) =
      _$_DosageAndRateDosage;
  _DosageAndRateDosage._() : super._();

  factory _DosageAndRateDosage.fromJson(Map<String, dynamic> json) =
      _$_DosageAndRateDosage.fromJson;

  @override
  @JsonKey(name: 'Ratio')
  Ratio? get ratio => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Range')
  Range? get range => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Quantity')
  Quantity? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DosageAndRateDosageCopyWith<_$_DosageAndRateDosage> get copyWith =>
      throw _privateConstructorUsedError;
}

DosageAndRateRate _$DosageAndRateRateFromJson(Map<String, dynamic> json) {
  return _DosageAndRateRate.fromJson(json);
}

/// @nodoc
mixin _$DosageAndRateRate {
  CodeableConcept? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'Range')
  Range? get range => throw _privateConstructorUsedError;
  @JsonKey(name: 'Quantity')
  Quantity? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DosageAndRateRateCopyWith<DosageAndRateRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DosageAndRateRateCopyWith<$Res> {
  factory $DosageAndRateRateCopyWith(
          DosageAndRateRate value, $Res Function(DosageAndRateRate) then) =
      _$DosageAndRateRateCopyWithImpl<$Res>;
  $Res call(
      {CodeableConcept? type,
      @JsonKey(name: 'Range') Range? range,
      @JsonKey(name: 'Quantity') Quantity? quantity});

  $CodeableConceptCopyWith<$Res>? get type;
  $RangeCopyWith<$Res>? get range;
  $QuantityCopyWith<$Res>? get quantity;
}

/// @nodoc
class _$DosageAndRateRateCopyWithImpl<$Res>
    implements $DosageAndRateRateCopyWith<$Res> {
  _$DosageAndRateRateCopyWithImpl(this._value, this._then);

  final DosageAndRateRate _value;
  // ignore: unused_field
  final $Res Function(DosageAndRateRate) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? range = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }

  @override
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value));
    });
  }

  @override
  $RangeCopyWith<$Res>? get range {
    if (_value.range == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.range!, (value) {
      return _then(_value.copyWith(range: value));
    });
  }

  @override
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value));
    });
  }
}

/// @nodoc
abstract class _$$_DosageAndRateRateCopyWith<$Res>
    implements $DosageAndRateRateCopyWith<$Res> {
  factory _$$_DosageAndRateRateCopyWith(_$_DosageAndRateRate value,
          $Res Function(_$_DosageAndRateRate) then) =
      __$$_DosageAndRateRateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CodeableConcept? type,
      @JsonKey(name: 'Range') Range? range,
      @JsonKey(name: 'Quantity') Quantity? quantity});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $RangeCopyWith<$Res>? get range;
  @override
  $QuantityCopyWith<$Res>? get quantity;
}

/// @nodoc
class __$$_DosageAndRateRateCopyWithImpl<$Res>
    extends _$DosageAndRateRateCopyWithImpl<$Res>
    implements _$$_DosageAndRateRateCopyWith<$Res> {
  __$$_DosageAndRateRateCopyWithImpl(
      _$_DosageAndRateRate _value, $Res Function(_$_DosageAndRateRate) _then)
      : super(_value, (v) => _then(v as _$_DosageAndRateRate));

  @override
  _$_DosageAndRateRate get _value => super._value as _$_DosageAndRateRate;

  @override
  $Res call({
    Object? type = freezed,
    Object? range = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_DosageAndRateRate(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DosageAndRateRate extends _DosageAndRateRate {
  _$_DosageAndRateRate(
      {this.type,
      @JsonKey(name: 'Range') this.range,
      @JsonKey(name: 'Quantity') this.quantity})
      : super._();

  factory _$_DosageAndRateRate.fromJson(Map<String, dynamic> json) =>
      _$$_DosageAndRateRateFromJson(json);

  @override
  final CodeableConcept? type;
  @override
  @JsonKey(name: 'Range')
  final Range? range;
  @override
  @JsonKey(name: 'Quantity')
  final Quantity? quantity;

  @override
  String toString() {
    return 'DosageAndRateRate(type: $type, range: $range, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DosageAndRateRate &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.range, range) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(range),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_DosageAndRateRateCopyWith<_$_DosageAndRateRate> get copyWith =>
      __$$_DosageAndRateRateCopyWithImpl<_$_DosageAndRateRate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DosageAndRateRateToJson(this);
  }
}

abstract class _DosageAndRateRate extends DosageAndRateRate {
  factory _DosageAndRateRate(
          {final CodeableConcept? type,
          @JsonKey(name: 'Range') final Range? range,
          @JsonKey(name: 'Quantity') final Quantity? quantity}) =
      _$_DosageAndRateRate;
  _DosageAndRateRate._() : super._();

  factory _DosageAndRateRate.fromJson(Map<String, dynamic> json) =
      _$_DosageAndRateRate.fromJson;

  @override
  CodeableConcept? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Range')
  Range? get range => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Quantity')
  Quantity? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DosageAndRateRateCopyWith<_$_DosageAndRateRate> get copyWith =>
      throw _privateConstructorUsedError;
}

AsNeeded _$AsNeededFromJson(Map<String, dynamic> json) {
  return _AsNeeded.fromJson(json);
}

/// @nodoc
mixin _$AsNeeded {
  @JsonKey(name: "Boolean")
  Boolean? get boolean => throw _privateConstructorUsedError;
  @JsonKey(name: "CodeableConcept")
  CodeableConcept? get codeableConcept => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AsNeededCopyWith<AsNeeded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsNeededCopyWith<$Res> {
  factory $AsNeededCopyWith(AsNeeded value, $Res Function(AsNeeded) then) =
      _$AsNeededCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Boolean") Boolean? boolean,
      @JsonKey(name: "CodeableConcept") CodeableConcept? codeableConcept});

  $CodeableConceptCopyWith<$Res>? get codeableConcept;
}

/// @nodoc
class _$AsNeededCopyWithImpl<$Res> implements $AsNeededCopyWith<$Res> {
  _$AsNeededCopyWithImpl(this._value, this._then);

  final AsNeeded _value;
  // ignore: unused_field
  final $Res Function(AsNeeded) _then;

  @override
  $Res call({
    Object? boolean = freezed,
    Object? codeableConcept = freezed,
  }) {
    return _then(_value.copyWith(
      boolean: boolean == freezed
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      codeableConcept: codeableConcept == freezed
          ? _value.codeableConcept
          : codeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }

  @override
  $CodeableConceptCopyWith<$Res>? get codeableConcept {
    if (_value.codeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.codeableConcept!, (value) {
      return _then(_value.copyWith(codeableConcept: value));
    });
  }
}

/// @nodoc
abstract class _$$_AsNeededCopyWith<$Res> implements $AsNeededCopyWith<$Res> {
  factory _$$_AsNeededCopyWith(
          _$_AsNeeded value, $Res Function(_$_AsNeeded) then) =
      __$$_AsNeededCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Boolean") Boolean? boolean,
      @JsonKey(name: "CodeableConcept") CodeableConcept? codeableConcept});

  @override
  $CodeableConceptCopyWith<$Res>? get codeableConcept;
}

/// @nodoc
class __$$_AsNeededCopyWithImpl<$Res> extends _$AsNeededCopyWithImpl<$Res>
    implements _$$_AsNeededCopyWith<$Res> {
  __$$_AsNeededCopyWithImpl(
      _$_AsNeeded _value, $Res Function(_$_AsNeeded) _then)
      : super(_value, (v) => _then(v as _$_AsNeeded));

  @override
  _$_AsNeeded get _value => super._value as _$_AsNeeded;

  @override
  $Res call({
    Object? boolean = freezed,
    Object? codeableConcept = freezed,
  }) {
    return _then(_$_AsNeeded(
      boolean: boolean == freezed
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      codeableConcept: codeableConcept == freezed
          ? _value.codeableConcept
          : codeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AsNeeded extends _AsNeeded {
  _$_AsNeeded(
      {@JsonKey(name: "Boolean") this.boolean,
      @JsonKey(name: "CodeableConcept") this.codeableConcept})
      : super._();

  factory _$_AsNeeded.fromJson(Map<String, dynamic> json) =>
      _$$_AsNeededFromJson(json);

  @override
  @JsonKey(name: "Boolean")
  final Boolean? boolean;
  @override
  @JsonKey(name: "CodeableConcept")
  final CodeableConcept? codeableConcept;

  @override
  String toString() {
    return 'AsNeeded(boolean: $boolean, codeableConcept: $codeableConcept)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AsNeeded &&
            const DeepCollectionEquality().equals(other.boolean, boolean) &&
            const DeepCollectionEquality()
                .equals(other.codeableConcept, codeableConcept));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(boolean),
      const DeepCollectionEquality().hash(codeableConcept));

  @JsonKey(ignore: true)
  @override
  _$$_AsNeededCopyWith<_$_AsNeeded> get copyWith =>
      __$$_AsNeededCopyWithImpl<_$_AsNeeded>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AsNeededToJson(this);
  }
}

abstract class _AsNeeded extends AsNeeded {
  factory _AsNeeded(
      {@JsonKey(name: "Boolean")
          final Boolean? boolean,
      @JsonKey(name: "CodeableConcept")
          final CodeableConcept? codeableConcept}) = _$_AsNeeded;
  _AsNeeded._() : super._();

  factory _AsNeeded.fromJson(Map<String, dynamic> json) = _$_AsNeeded.fromJson;

  @override
  @JsonKey(name: "Boolean")
  Boolean? get boolean => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CodeableConcept")
  CodeableConcept? get codeableConcept => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AsNeededCopyWith<_$_AsNeeded> get copyWith =>
      throw _privateConstructorUsedError;
}
