// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RDeviceRequest _$RDeviceRequestFromJson(Map<String, dynamic> json) {
  return _RDeviceRequest.fromJson(json);
}

/// @nodoc
mixin _$RDeviceRequest {
  R5ResourceType get resourceType => throw _privateConstructorUsedError;
  Id? get id => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;
  FhirUri? get implicitRules => throw _privateConstructorUsedError;
  Code? get language => throw _privateConstructorUsedError;
  Narrative? get text => throw _privateConstructorUsedError;
  List<Resource>? get contained => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;
  Reference? get instantiatesCanonical => throw _privateConstructorUsedError;
  List<FhirUri>? get instantiatesUri => throw _privateConstructorUsedError;
  List<Reference>? get basedOn => throw _privateConstructorUsedError;
  List<Reference>? get priorRequest => throw _privateConstructorUsedError;
  Identifier? get groupIdentifier => throw _privateConstructorUsedError;
  Code? get status => throw _privateConstructorUsedError;
  Code? get intent => throw _privateConstructorUsedError;
  Code? get priority => throw _privateConstructorUsedError;
  DeviceRequested get code => throw _privateConstructorUsedError;
  List<DeviceRequestParameter>? get parameter =>
      throw _privateConstructorUsedError;
  Reference get subject => throw _privateConstructorUsedError;
  Reference? get encounter => throw _privateConstructorUsedError;
  Occurrence? get occurrence => throw _privateConstructorUsedError;
  FhirDateTime? get authoredOn => throw _privateConstructorUsedError;
  Reference? get requester => throw _privateConstructorUsedError;
  CodeableConcept? get performerType => throw _privateConstructorUsedError;
  Reference? get performer => throw _privateConstructorUsedError;
  List<CodeableConcept>? get reasonCode => throw _privateConstructorUsedError;
  List<Reference>? get reasonReference => throw _privateConstructorUsedError;
  List<Reference>? get insurance => throw _privateConstructorUsedError;
  List<Reference>? get supportingInfo => throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;
  List<Reference>? get relevantHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RDeviceRequestCopyWith<RDeviceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RDeviceRequestCopyWith<$Res> {
  factory $RDeviceRequestCopyWith(
          RDeviceRequest value, $Res Function(RDeviceRequest) then) =
      _$RDeviceRequestCopyWithImpl<$Res>;
  $Res call(
      {R5ResourceType resourceType,
      Id? id,
      Meta? meta,
      FhirUri? implicitRules,
      Code? language,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      Reference? instantiatesCanonical,
      List<FhirUri>? instantiatesUri,
      List<Reference>? basedOn,
      List<Reference>? priorRequest,
      Identifier? groupIdentifier,
      Code? status,
      Code? intent,
      Code? priority,
      DeviceRequested code,
      List<DeviceRequestParameter>? parameter,
      Reference subject,
      Reference? encounter,
      Occurrence? occurrence,
      FhirDateTime? authoredOn,
      Reference? requester,
      CodeableConcept? performerType,
      Reference? performer,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      List<Reference>? insurance,
      List<Reference>? supportingInfo,
      List<Annotation>? note,
      List<Reference>? relevantHistory});

  $MetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res>? get instantiatesCanonical;
  $IdentifierCopyWith<$Res>? get groupIdentifier;
  $DeviceRequestedCopyWith<$Res> get code;
  $ReferenceCopyWith<$Res> get subject;
  $ReferenceCopyWith<$Res>? get encounter;
  $OccurrenceCopyWith<$Res>? get occurrence;
  $ReferenceCopyWith<$Res>? get requester;
  $CodeableConceptCopyWith<$Res>? get performerType;
  $ReferenceCopyWith<$Res>? get performer;
}

/// @nodoc
class _$RDeviceRequestCopyWithImpl<$Res>
    implements $RDeviceRequestCopyWith<$Res> {
  _$RDeviceRequestCopyWithImpl(this._value, this._then);

  final RDeviceRequest _value;
  // ignore: unused_field
  final $Res Function(RDeviceRequest) _then;

  @override
  $Res call({
    Object? resourceType = freezed,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? language = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? instantiatesCanonical = freezed,
    Object? instantiatesUri = freezed,
    Object? basedOn = freezed,
    Object? priorRequest = freezed,
    Object? groupIdentifier = freezed,
    Object? status = freezed,
    Object? intent = freezed,
    Object? priority = freezed,
    Object? code = freezed,
    Object? parameter = freezed,
    Object? subject = freezed,
    Object? encounter = freezed,
    Object? occurrence = freezed,
    Object? authoredOn = freezed,
    Object? requester = freezed,
    Object? performerType = freezed,
    Object? performer = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? insurance = freezed,
    Object? supportingInfo = freezed,
    Object? note = freezed,
    Object? relevantHistory = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: resourceType == freezed
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R5ResourceType,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      implicitRules: implicitRules == freezed
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Code?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: contained == freezed
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: extension_ == freezed
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: modifierExtension == freezed
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      instantiatesCanonical: instantiatesCanonical == freezed
          ? _value.instantiatesCanonical
          : instantiatesCanonical // ignore: cast_nullable_to_non_nullable
              as Reference?,
      instantiatesUri: instantiatesUri == freezed
          ? _value.instantiatesUri
          : instantiatesUri // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      basedOn: basedOn == freezed
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      priorRequest: priorRequest == freezed
          ? _value.priorRequest
          : priorRequest // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      groupIdentifier: groupIdentifier == freezed
          ? _value.groupIdentifier
          : groupIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Code?,
      intent: intent == freezed
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as Code?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Code?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as DeviceRequested,
      parameter: parameter == freezed
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as List<DeviceRequestParameter>?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: encounter == freezed
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      occurrence: occurrence == freezed
          ? _value.occurrence
          : occurrence // ignore: cast_nullable_to_non_nullable
              as Occurrence?,
      authoredOn: authoredOn == freezed
          ? _value.authoredOn
          : authoredOn // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as Reference?,
      performerType: performerType == freezed
          ? _value.performerType
          : performerType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      performer: performer == freezed
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      reasonCode: reasonCode == freezed
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: reasonReference == freezed
          ? _value.reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      insurance: insurance == freezed
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      supportingInfo: supportingInfo == freezed
          ? _value.supportingInfo
          : supportingInfo // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      relevantHistory: relevantHistory == freezed
          ? _value.relevantHistory
          : relevantHistory // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
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

  @override
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value));
    });
  }

  @override
  $ReferenceCopyWith<$Res>? get instantiatesCanonical {
    if (_value.instantiatesCanonical == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.instantiatesCanonical!, (value) {
      return _then(_value.copyWith(instantiatesCanonical: value));
    });
  }

  @override
  $IdentifierCopyWith<$Res>? get groupIdentifier {
    if (_value.groupIdentifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.groupIdentifier!, (value) {
      return _then(_value.copyWith(groupIdentifier: value));
    });
  }

  @override
  $DeviceRequestedCopyWith<$Res> get code {
    return $DeviceRequestedCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value));
    });
  }

  @override
  $ReferenceCopyWith<$Res> get subject {
    return $ReferenceCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value));
    });
  }

  @override
  $ReferenceCopyWith<$Res>? get encounter {
    if (_value.encounter == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.encounter!, (value) {
      return _then(_value.copyWith(encounter: value));
    });
  }

  @override
  $OccurrenceCopyWith<$Res>? get occurrence {
    if (_value.occurrence == null) {
      return null;
    }

    return $OccurrenceCopyWith<$Res>(_value.occurrence!, (value) {
      return _then(_value.copyWith(occurrence: value));
    });
  }

  @override
  $ReferenceCopyWith<$Res>? get requester {
    if (_value.requester == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.requester!, (value) {
      return _then(_value.copyWith(requester: value));
    });
  }

  @override
  $CodeableConceptCopyWith<$Res>? get performerType {
    if (_value.performerType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.performerType!, (value) {
      return _then(_value.copyWith(performerType: value));
    });
  }

  @override
  $ReferenceCopyWith<$Res>? get performer {
    if (_value.performer == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.performer!, (value) {
      return _then(_value.copyWith(performer: value));
    });
  }
}

/// @nodoc
abstract class _$$_RDeviceRequestCopyWith<$Res>
    implements $RDeviceRequestCopyWith<$Res> {
  factory _$$_RDeviceRequestCopyWith(
          _$_RDeviceRequest value, $Res Function(_$_RDeviceRequest) then) =
      __$$_RDeviceRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {R5ResourceType resourceType,
      Id? id,
      Meta? meta,
      FhirUri? implicitRules,
      Code? language,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      Reference? instantiatesCanonical,
      List<FhirUri>? instantiatesUri,
      List<Reference>? basedOn,
      List<Reference>? priorRequest,
      Identifier? groupIdentifier,
      Code? status,
      Code? intent,
      Code? priority,
      DeviceRequested code,
      List<DeviceRequestParameter>? parameter,
      Reference subject,
      Reference? encounter,
      Occurrence? occurrence,
      FhirDateTime? authoredOn,
      Reference? requester,
      CodeableConcept? performerType,
      Reference? performer,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      List<Reference>? insurance,
      List<Reference>? supportingInfo,
      List<Annotation>? note,
      List<Reference>? relevantHistory});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res>? get instantiatesCanonical;
  @override
  $IdentifierCopyWith<$Res>? get groupIdentifier;
  @override
  $DeviceRequestedCopyWith<$Res> get code;
  @override
  $ReferenceCopyWith<$Res> get subject;
  @override
  $ReferenceCopyWith<$Res>? get encounter;
  @override
  $OccurrenceCopyWith<$Res>? get occurrence;
  @override
  $ReferenceCopyWith<$Res>? get requester;
  @override
  $CodeableConceptCopyWith<$Res>? get performerType;
  @override
  $ReferenceCopyWith<$Res>? get performer;
}

/// @nodoc
class __$$_RDeviceRequestCopyWithImpl<$Res>
    extends _$RDeviceRequestCopyWithImpl<$Res>
    implements _$$_RDeviceRequestCopyWith<$Res> {
  __$$_RDeviceRequestCopyWithImpl(
      _$_RDeviceRequest _value, $Res Function(_$_RDeviceRequest) _then)
      : super(_value, (v) => _then(v as _$_RDeviceRequest));

  @override
  _$_RDeviceRequest get _value => super._value as _$_RDeviceRequest;

  @override
  $Res call({
    Object? resourceType = freezed,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? language = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? instantiatesCanonical = freezed,
    Object? instantiatesUri = freezed,
    Object? basedOn = freezed,
    Object? priorRequest = freezed,
    Object? groupIdentifier = freezed,
    Object? status = freezed,
    Object? intent = freezed,
    Object? priority = freezed,
    Object? code = freezed,
    Object? parameter = freezed,
    Object? subject = freezed,
    Object? encounter = freezed,
    Object? occurrence = freezed,
    Object? authoredOn = freezed,
    Object? requester = freezed,
    Object? performerType = freezed,
    Object? performer = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? insurance = freezed,
    Object? supportingInfo = freezed,
    Object? note = freezed,
    Object? relevantHistory = freezed,
  }) {
    return _then(_$_RDeviceRequest(
      resourceType: resourceType == freezed
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R5ResourceType,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      implicitRules: implicitRules == freezed
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Code?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: contained == freezed
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: extension_ == freezed
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: modifierExtension == freezed
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: identifier == freezed
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      instantiatesCanonical: instantiatesCanonical == freezed
          ? _value.instantiatesCanonical
          : instantiatesCanonical // ignore: cast_nullable_to_non_nullable
              as Reference?,
      instantiatesUri: instantiatesUri == freezed
          ? _value._instantiatesUri
          : instantiatesUri // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      basedOn: basedOn == freezed
          ? _value._basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      priorRequest: priorRequest == freezed
          ? _value._priorRequest
          : priorRequest // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      groupIdentifier: groupIdentifier == freezed
          ? _value.groupIdentifier
          : groupIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Code?,
      intent: intent == freezed
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as Code?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Code?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as DeviceRequested,
      parameter: parameter == freezed
          ? _value._parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as List<DeviceRequestParameter>?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: encounter == freezed
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      occurrence: occurrence == freezed
          ? _value.occurrence
          : occurrence // ignore: cast_nullable_to_non_nullable
              as Occurrence?,
      authoredOn: authoredOn == freezed
          ? _value.authoredOn
          : authoredOn // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as Reference?,
      performerType: performerType == freezed
          ? _value.performerType
          : performerType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      performer: performer == freezed
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      reasonCode: reasonCode == freezed
          ? _value._reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: reasonReference == freezed
          ? _value._reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      insurance: insurance == freezed
          ? _value._insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      supportingInfo: supportingInfo == freezed
          ? _value._supportingInfo
          : supportingInfo // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: note == freezed
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      relevantHistory: relevantHistory == freezed
          ? _value._relevantHistory
          : relevantHistory // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RDeviceRequest extends _RDeviceRequest {
  _$_RDeviceRequest(
      {this.resourceType = R5ResourceType.DeviceRequest,
      this.id,
      this.meta,
      this.implicitRules,
      this.language,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.instantiatesCanonical,
      final List<FhirUri>? instantiatesUri,
      final List<Reference>? basedOn,
      final List<Reference>? priorRequest,
      this.groupIdentifier,
      this.status,
      required this.intent,
      this.priority,
      required this.code,
      final List<DeviceRequestParameter>? parameter,
      required this.subject,
      this.encounter,
      this.occurrence,
      this.authoredOn,
      this.requester,
      this.performerType,
      this.performer,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final List<Reference>? insurance,
      final List<Reference>? supportingInfo,
      final List<Annotation>? note,
      final List<Reference>? relevantHistory})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _instantiatesUri = instantiatesUri,
        _basedOn = basedOn,
        _priorRequest = priorRequest,
        _parameter = parameter,
        _reasonCode = reasonCode,
        _reasonReference = reasonReference,
        _insurance = insurance,
        _supportingInfo = supportingInfo,
        _note = note,
        _relevantHistory = relevantHistory,
        super._();

  factory _$_RDeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RDeviceRequestFromJson(json);

  @override
  @JsonKey()
  final R5ResourceType resourceType;
  @override
  final Id? id;
  @override
  final Meta? meta;
  @override
  final FhirUri? implicitRules;
  @override
  final Code? language;
  @override
  final Narrative? text;
  final List<Resource>? _contained;
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Identifier>? _identifier;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Reference? instantiatesCanonical;
  final List<FhirUri>? _instantiatesUri;
  @override
  List<FhirUri>? get instantiatesUri {
    final value = _instantiatesUri;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _basedOn;
  @override
  List<Reference>? get basedOn {
    final value = _basedOn;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _priorRequest;
  @override
  List<Reference>? get priorRequest {
    final value = _priorRequest;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Identifier? groupIdentifier;
  @override
  final Code? status;
  @override
  final Code? intent;
  @override
  final Code? priority;
  @override
  final DeviceRequested code;
  final List<DeviceRequestParameter>? _parameter;
  @override
  List<DeviceRequestParameter>? get parameter {
    final value = _parameter;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Reference subject;
  @override
  final Reference? encounter;
  @override
  final Occurrence? occurrence;
  @override
  final FhirDateTime? authoredOn;
  @override
  final Reference? requester;
  @override
  final CodeableConcept? performerType;
  @override
  final Reference? performer;
  final List<CodeableConcept>? _reasonCode;
  @override
  List<CodeableConcept>? get reasonCode {
    final value = _reasonCode;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _reasonReference;
  @override
  List<Reference>? get reasonReference {
    final value = _reasonReference;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _insurance;
  @override
  List<Reference>? get insurance {
    final value = _insurance;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _supportingInfo;
  @override
  List<Reference>? get supportingInfo {
    final value = _supportingInfo;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Annotation>? _note;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _relevantHistory;
  @override
  List<Reference>? get relevantHistory {
    final value = _relevantHistory;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RDeviceRequest(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, language: $language, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, instantiatesCanonical: $instantiatesCanonical, instantiatesUri: $instantiatesUri, basedOn: $basedOn, priorRequest: $priorRequest, groupIdentifier: $groupIdentifier, status: $status, intent: $intent, priority: $priority, code: $code, parameter: $parameter, subject: $subject, encounter: $encounter, occurrence: $occurrence, authoredOn: $authoredOn, requester: $requester, performerType: $performerType, performer: $performer, reasonCode: $reasonCode, reasonReference: $reasonReference, insurance: $insurance, supportingInfo: $supportingInfo, note: $note, relevantHistory: $relevantHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RDeviceRequest &&
            const DeepCollectionEquality()
                .equals(other.resourceType, resourceType) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality()
                .equals(other.implicitRules, implicitRules) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            const DeepCollectionEquality()
                .equals(other.instantiatesCanonical, instantiatesCanonical) &&
            const DeepCollectionEquality()
                .equals(other._instantiatesUri, _instantiatesUri) &&
            const DeepCollectionEquality().equals(other._basedOn, _basedOn) &&
            const DeepCollectionEquality()
                .equals(other._priorRequest, _priorRequest) &&
            const DeepCollectionEquality()
                .equals(other.groupIdentifier, groupIdentifier) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.intent, intent) &&
            const DeepCollectionEquality().equals(other.priority, priority) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other._parameter, _parameter) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.encounter, encounter) &&
            const DeepCollectionEquality()
                .equals(other.occurrence, occurrence) &&
            const DeepCollectionEquality()
                .equals(other.authoredOn, authoredOn) &&
            const DeepCollectionEquality().equals(other.requester, requester) &&
            const DeepCollectionEquality()
                .equals(other.performerType, performerType) &&
            const DeepCollectionEquality().equals(other.performer, performer) &&
            const DeepCollectionEquality()
                .equals(other._reasonCode, _reasonCode) &&
            const DeepCollectionEquality()
                .equals(other._reasonReference, _reasonReference) &&
            const DeepCollectionEquality()
                .equals(other._insurance, _insurance) &&
            const DeepCollectionEquality()
                .equals(other._supportingInfo, _supportingInfo) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality()
                .equals(other._relevantHistory, _relevantHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(resourceType),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(meta),
        const DeepCollectionEquality().hash(implicitRules),
        const DeepCollectionEquality().hash(language),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        const DeepCollectionEquality().hash(instantiatesCanonical),
        const DeepCollectionEquality().hash(_instantiatesUri),
        const DeepCollectionEquality().hash(_basedOn),
        const DeepCollectionEquality().hash(_priorRequest),
        const DeepCollectionEquality().hash(groupIdentifier),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(intent),
        const DeepCollectionEquality().hash(priority),
        const DeepCollectionEquality().hash(code),
        const DeepCollectionEquality().hash(_parameter),
        const DeepCollectionEquality().hash(subject),
        const DeepCollectionEquality().hash(encounter),
        const DeepCollectionEquality().hash(occurrence),
        const DeepCollectionEquality().hash(authoredOn),
        const DeepCollectionEquality().hash(requester),
        const DeepCollectionEquality().hash(performerType),
        const DeepCollectionEquality().hash(performer),
        const DeepCollectionEquality().hash(_reasonCode),
        const DeepCollectionEquality().hash(_reasonReference),
        const DeepCollectionEquality().hash(_insurance),
        const DeepCollectionEquality().hash(_supportingInfo),
        const DeepCollectionEquality().hash(_note),
        const DeepCollectionEquality().hash(_relevantHistory)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_RDeviceRequestCopyWith<_$_RDeviceRequest> get copyWith =>
      __$$_RDeviceRequestCopyWithImpl<_$_RDeviceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RDeviceRequestToJson(this);
  }
}

abstract class _RDeviceRequest extends RDeviceRequest {
  factory _RDeviceRequest(
      {final R5ResourceType resourceType,
      final Id? id,
      final Meta? meta,
      final FhirUri? implicitRules,
      final Code? language,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final Reference? instantiatesCanonical,
      final List<FhirUri>? instantiatesUri,
      final List<Reference>? basedOn,
      final List<Reference>? priorRequest,
      final Identifier? groupIdentifier,
      final Code? status,
      required final Code? intent,
      final Code? priority,
      required final DeviceRequested code,
      final List<DeviceRequestParameter>? parameter,
      required final Reference subject,
      final Reference? encounter,
      final Occurrence? occurrence,
      final FhirDateTime? authoredOn,
      final Reference? requester,
      final CodeableConcept? performerType,
      final Reference? performer,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final List<Reference>? insurance,
      final List<Reference>? supportingInfo,
      final List<Annotation>? note,
      final List<Reference>? relevantHistory}) = _$_RDeviceRequest;
  _RDeviceRequest._() : super._();

  factory _RDeviceRequest.fromJson(Map<String, dynamic> json) =
      _$_RDeviceRequest.fromJson;

  @override
  R5ResourceType get resourceType => throw _privateConstructorUsedError;
  @override
  Id? get id => throw _privateConstructorUsedError;
  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  FhirUri? get implicitRules => throw _privateConstructorUsedError;
  @override
  Code? get language => throw _privateConstructorUsedError;
  @override
  Narrative? get text => throw _privateConstructorUsedError;
  @override
  List<Resource>? get contained => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  @override
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  @override
  List<Identifier>? get identifier => throw _privateConstructorUsedError;
  @override
  Reference? get instantiatesCanonical => throw _privateConstructorUsedError;
  @override
  List<FhirUri>? get instantiatesUri => throw _privateConstructorUsedError;
  @override
  List<Reference>? get basedOn => throw _privateConstructorUsedError;
  @override
  List<Reference>? get priorRequest => throw _privateConstructorUsedError;
  @override
  Identifier? get groupIdentifier => throw _privateConstructorUsedError;
  @override
  Code? get status => throw _privateConstructorUsedError;
  @override
  Code? get intent => throw _privateConstructorUsedError;
  @override
  Code? get priority => throw _privateConstructorUsedError;
  @override
  DeviceRequested get code => throw _privateConstructorUsedError;
  @override
  List<DeviceRequestParameter>? get parameter =>
      throw _privateConstructorUsedError;
  @override
  Reference get subject => throw _privateConstructorUsedError;
  @override
  Reference? get encounter => throw _privateConstructorUsedError;
  @override
  Occurrence? get occurrence => throw _privateConstructorUsedError;
  @override
  FhirDateTime? get authoredOn => throw _privateConstructorUsedError;
  @override
  Reference? get requester => throw _privateConstructorUsedError;
  @override
  CodeableConcept? get performerType => throw _privateConstructorUsedError;
  @override
  Reference? get performer => throw _privateConstructorUsedError;
  @override
  List<CodeableConcept>? get reasonCode => throw _privateConstructorUsedError;
  @override
  List<Reference>? get reasonReference => throw _privateConstructorUsedError;
  @override
  List<Reference>? get insurance => throw _privateConstructorUsedError;
  @override
  List<Reference>? get supportingInfo => throw _privateConstructorUsedError;
  @override
  List<Annotation>? get note => throw _privateConstructorUsedError;
  @override
  List<Reference>? get relevantHistory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RDeviceRequestCopyWith<_$_RDeviceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceRequested _$DeviceRequestedFromJson(Map<String, dynamic> json) {
  return _DeviceRequested.fromJson(json);
}

/// @nodoc
mixin _$DeviceRequested {
  Reference? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: 'CodeableConcept')
  CodeableConcept? get codeableConcept => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceRequestedCopyWith<DeviceRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceRequestedCopyWith<$Res> {
  factory $DeviceRequestedCopyWith(
          DeviceRequested value, $Res Function(DeviceRequested) then) =
      _$DeviceRequestedCopyWithImpl<$Res>;
  $Res call(
      {Reference? reference,
      @JsonKey(name: 'CodeableConcept') CodeableConcept? codeableConcept});

  $ReferenceCopyWith<$Res>? get reference;
  $CodeableConceptCopyWith<$Res>? get codeableConcept;
}

/// @nodoc
class _$DeviceRequestedCopyWithImpl<$Res>
    implements $DeviceRequestedCopyWith<$Res> {
  _$DeviceRequestedCopyWithImpl(this._value, this._then);

  final DeviceRequested _value;
  // ignore: unused_field
  final $Res Function(DeviceRequested) _then;

  @override
  $Res call({
    Object? reference = freezed,
    Object? codeableConcept = freezed,
  }) {
    return _then(_value.copyWith(
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      codeableConcept: codeableConcept == freezed
          ? _value.codeableConcept
          : codeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }

  @override
  $ReferenceCopyWith<$Res>? get reference {
    if (_value.reference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.reference!, (value) {
      return _then(_value.copyWith(reference: value));
    });
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
abstract class _$$_DeviceRequestedCopyWith<$Res>
    implements $DeviceRequestedCopyWith<$Res> {
  factory _$$_DeviceRequestedCopyWith(
          _$_DeviceRequested value, $Res Function(_$_DeviceRequested) then) =
      __$$_DeviceRequestedCopyWithImpl<$Res>;
  @override
  $Res call(
      {Reference? reference,
      @JsonKey(name: 'CodeableConcept') CodeableConcept? codeableConcept});

  @override
  $ReferenceCopyWith<$Res>? get reference;
  @override
  $CodeableConceptCopyWith<$Res>? get codeableConcept;
}

/// @nodoc
class __$$_DeviceRequestedCopyWithImpl<$Res>
    extends _$DeviceRequestedCopyWithImpl<$Res>
    implements _$$_DeviceRequestedCopyWith<$Res> {
  __$$_DeviceRequestedCopyWithImpl(
      _$_DeviceRequested _value, $Res Function(_$_DeviceRequested) _then)
      : super(_value, (v) => _then(v as _$_DeviceRequested));

  @override
  _$_DeviceRequested get _value => super._value as _$_DeviceRequested;

  @override
  $Res call({
    Object? reference = freezed,
    Object? codeableConcept = freezed,
  }) {
    return _then(_$_DeviceRequested(
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      codeableConcept: codeableConcept == freezed
          ? _value.codeableConcept
          : codeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceRequested extends _DeviceRequested {
  _$_DeviceRequested(
      {this.reference, @JsonKey(name: 'CodeableConcept') this.codeableConcept})
      : super._();

  factory _$_DeviceRequested.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceRequestedFromJson(json);

  @override
  final Reference? reference;
  @override
  @JsonKey(name: 'CodeableConcept')
  final CodeableConcept? codeableConcept;

  @override
  String toString() {
    return 'DeviceRequested(reference: $reference, codeableConcept: $codeableConcept)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceRequested &&
            const DeepCollectionEquality().equals(other.reference, reference) &&
            const DeepCollectionEquality()
                .equals(other.codeableConcept, codeableConcept));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reference),
      const DeepCollectionEquality().hash(codeableConcept));

  @JsonKey(ignore: true)
  @override
  _$$_DeviceRequestedCopyWith<_$_DeviceRequested> get copyWith =>
      __$$_DeviceRequestedCopyWithImpl<_$_DeviceRequested>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceRequestedToJson(this);
  }
}

abstract class _DeviceRequested extends DeviceRequested {
  factory _DeviceRequested(
      {final Reference? reference,
      @JsonKey(name: 'CodeableConcept')
          final CodeableConcept? codeableConcept}) = _$_DeviceRequested;
  _DeviceRequested._() : super._();

  factory _DeviceRequested.fromJson(Map<String, dynamic> json) =
      _$_DeviceRequested.fromJson;

  @override
  Reference? get reference => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'CodeableConcept')
  CodeableConcept? get codeableConcept => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceRequestedCopyWith<_$_DeviceRequested> get copyWith =>
      throw _privateConstructorUsedError;
}
