// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'concept.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RConcept _$RConceptFromJson(Map<String, dynamic> json) {
  return _RConcept.fromJson(json);
}

/// @nodoc
mixin _$RConcept {
  Id? get id => throw _privateConstructorUsedError;
  Code? get code => throw _privateConstructorUsedError;
  FhirUri? get system => throw _privateConstructorUsedError;
  String? get display => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;
  List<String>? get valueset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RConceptCopyWith<RConcept> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RConceptCopyWith<$Res> {
  factory $RConceptCopyWith(RConcept value, $Res Function(RConcept) then) =
      _$RConceptCopyWithImpl<$Res>;
  $Res call(
      {Id? id,
      Code? code,
      FhirUri? system,
      String? display,
      Meta? meta,
      List<String>? valueset});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$RConceptCopyWithImpl<$Res> implements $RConceptCopyWith<$Res> {
  _$RConceptCopyWithImpl(this._value, this._then);

  final RConcept _value;
  // ignore: unused_field
  final $Res Function(RConcept) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? system = freezed,
    Object? display = freezed,
    Object? meta = freezed,
    Object? valueset = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code?,
      system: system == freezed
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      valueset: valueset == freezed
          ? _value.valueset
          : valueset // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$$_RConceptCopyWith<$Res> implements $RConceptCopyWith<$Res> {
  factory _$$_RConceptCopyWith(
          _$_RConcept value, $Res Function(_$_RConcept) then) =
      __$$_RConceptCopyWithImpl<$Res>;
  @override
  $Res call(
      {Id? id,
      Code? code,
      FhirUri? system,
      String? display,
      Meta? meta,
      List<String>? valueset});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_RConceptCopyWithImpl<$Res> extends _$RConceptCopyWithImpl<$Res>
    implements _$$_RConceptCopyWith<$Res> {
  __$$_RConceptCopyWithImpl(
      _$_RConcept _value, $Res Function(_$_RConcept) _then)
      : super(_value, (v) => _then(v as _$_RConcept));

  @override
  _$_RConcept get _value => super._value as _$_RConcept;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? system = freezed,
    Object? display = freezed,
    Object? meta = freezed,
    Object? valueset = freezed,
  }) {
    return _then(_$_RConcept(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code?,
      system: system == freezed
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      valueset: valueset == freezed
          ? _value._valueset
          : valueset // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RConcept extends _RConcept {
  _$_RConcept(
      {this.id,
      this.code,
      this.system,
      this.display,
      this.meta,
      final List<String>? valueset})
      : _valueset = valueset,
        super._();

  factory _$_RConcept.fromJson(Map<String, dynamic> json) =>
      _$$_RConceptFromJson(json);

  @override
  final Id? id;
  @override
  final Code? code;
  @override
  final FhirUri? system;
  @override
  final String? display;
  @override
  final Meta? meta;
  final List<String>? _valueset;
  @override
  List<String>? get valueset {
    final value = _valueset;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RConcept(id: $id, code: $code, system: $system, display: $display, meta: $meta, valueset: $valueset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RConcept &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.system, system) &&
            const DeepCollectionEquality().equals(other.display, display) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other._valueset, _valueset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(system),
      const DeepCollectionEquality().hash(display),
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(_valueset));

  @JsonKey(ignore: true)
  @override
  _$$_RConceptCopyWith<_$_RConcept> get copyWith =>
      __$$_RConceptCopyWithImpl<_$_RConcept>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RConceptToJson(this);
  }
}

abstract class _RConcept extends RConcept {
  factory _RConcept(
      {final Id? id,
      final Code? code,
      final FhirUri? system,
      final String? display,
      final Meta? meta,
      final List<String>? valueset}) = _$_RConcept;
  _RConcept._() : super._();

  factory _RConcept.fromJson(Map<String, dynamic> json) = _$_RConcept.fromJson;

  @override
  Id? get id => throw _privateConstructorUsedError;
  @override
  Code? get code => throw _privateConstructorUsedError;
  @override
  FhirUri? get system => throw _privateConstructorUsedError;
  @override
  String? get display => throw _privateConstructorUsedError;
  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  List<String>? get valueset => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RConceptCopyWith<_$_RConcept> get copyWith =>
      throw _privateConstructorUsedError;
}
