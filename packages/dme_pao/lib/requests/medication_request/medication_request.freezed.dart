// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medication_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RMedicationRequest _$RMedicationRequestFromJson(Map<String, dynamic> json) {
  return _RMedicationRequest.fromJson(json);
}

/// @nodoc
mixin _$RMedicationRequest {
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
  Code get status => throw _privateConstructorUsedError;
  CodeableConcept? get statusReason => throw _privateConstructorUsedError;
  Code? get intent => throw _privateConstructorUsedError;
  List<CodeableConcept>? get category => throw _privateConstructorUsedError;
  Code? get priority => throw _privateConstructorUsedError;
  Boolean? get doNotPerform => throw _privateConstructorUsedError;
  MedicationReported? get reported => throw _privateConstructorUsedError;
  MedicationRequestMedication get medication =>
      throw _privateConstructorUsedError;
  Reference get subject => throw _privateConstructorUsedError;
  Reference? get encounter => throw _privateConstructorUsedError;
  Reference? get supportingInformation => throw _privateConstructorUsedError;
  FhirDateTime? get authoredOn => throw _privateConstructorUsedError;
  Reference? get requester => throw _privateConstructorUsedError;
  CodeableConcept? get performerType => throw _privateConstructorUsedError;
  Reference? get performer => throw _privateConstructorUsedError;
  Reference? get recorder => throw _privateConstructorUsedError;
  List<CodeableConcept>? get reasonCode => throw _privateConstructorUsedError;
  List<Reference>? get reasonReference => throw _privateConstructorUsedError;
  List<Reference>? get instantiatesCanonical =>
      throw _privateConstructorUsedError;
  FhirUri? get instantiatesUri => throw _privateConstructorUsedError;
  Reference? get basedOn => throw _privateConstructorUsedError;
  Identifier? get groupIdentifier => throw _privateConstructorUsedError;
  CodeableConcept? get courseOfTherapyType =>
      throw _privateConstructorUsedError;
  List<Reference>? get insurance => throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;
  List<Dosage>? get dosageInstruction => throw _privateConstructorUsedError;
  dynamic get dispenseRequest => throw _privateConstructorUsedError;
  dynamic get substitution => throw _privateConstructorUsedError;
  Reference? get priorPrescription => throw _privateConstructorUsedError;
  List<Reference>? get detectedIssue => throw _privateConstructorUsedError;
  List<Reference>? get eventHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RMedicationRequestCopyWith<RMedicationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RMedicationRequestCopyWith<$Res> {
  factory $RMedicationRequestCopyWith(
          RMedicationRequest value, $Res Function(RMedicationRequest) then) =
      _$RMedicationRequestCopyWithImpl<$Res>;
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
      Code status,
      CodeableConcept? statusReason,
      Code? intent,
      List<CodeableConcept>? category,
      Code? priority,
      Boolean? doNotPerform,
      MedicationReported? reported,
      MedicationRequestMedication medication,
      Reference subject,
      Reference? encounter,
      Reference? supportingInformation,
      FhirDateTime? authoredOn,
      Reference? requester,
      CodeableConcept? performerType,
      Reference? performer,
      Reference? recorder,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      List<Reference>? instantiatesCanonical,
      FhirUri? instantiatesUri,
      Reference? basedOn,
      Identifier? groupIdentifier,
      CodeableConcept? courseOfTherapyType,
      List<Reference>? insurance,
      List<Annotation>? note,
      List<Dosage>? dosageInstruction,
      dynamic dispenseRequest,
      dynamic substitution,
      Reference? priorPrescription,
      List<Reference>? detectedIssue,
      List<Reference>? eventHistory});

  $MetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get statusReason;
  $MedicationReportedCopyWith<$Res>? get reported;
  $MedicationRequestMedicationCopyWith<$Res> get medication;
  $ReferenceCopyWith<$Res> get subject;
  $ReferenceCopyWith<$Res>? get encounter;
  $ReferenceCopyWith<$Res>? get supportingInformation;
  $ReferenceCopyWith<$Res>? get requester;
  $CodeableConceptCopyWith<$Res>? get performerType;
  $ReferenceCopyWith<$Res>? get performer;
  $ReferenceCopyWith<$Res>? get recorder;
  $ReferenceCopyWith<$Res>? get basedOn;
  $IdentifierCopyWith<$Res>? get groupIdentifier;
  $CodeableConceptCopyWith<$Res>? get courseOfTherapyType;
  $ReferenceCopyWith<$Res>? get priorPrescription;
}

/// @nodoc
class _$RMedicationRequestCopyWithImpl<$Res>
    implements $RMedicationRequestCopyWith<$Res> {
  _$RMedicationRequestCopyWithImpl(this._value, this._then);

  final RMedicationRequest _value;
  // ignore: unused_field
  final $Res Function(RMedicationRequest) _then;

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
    Object? status = freezed,
    Object? statusReason = freezed,
    Object? intent = freezed,
    Object? category = freezed,
    Object? priority = freezed,
    Object? doNotPerform = freezed,
    Object? reported = freezed,
    Object? medication = freezed,
    Object? subject = freezed,
    Object? encounter = freezed,
    Object? supportingInformation = freezed,
    Object? authoredOn = freezed,
    Object? requester = freezed,
    Object? performerType = freezed,
    Object? performer = freezed,
    Object? recorder = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? instantiatesCanonical = freezed,
    Object? instantiatesUri = freezed,
    Object? basedOn = freezed,
    Object? groupIdentifier = freezed,
    Object? courseOfTherapyType = freezed,
    Object? insurance = freezed,
    Object? note = freezed,
    Object? dosageInstruction = freezed,
    Object? dispenseRequest = freezed,
    Object? substitution = freezed,
    Object? priorPrescription = freezed,
    Object? detectedIssue = freezed,
    Object? eventHistory = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Code,
      statusReason: statusReason == freezed
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      intent: intent == freezed
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as Code?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Code?,
      doNotPerform: doNotPerform == freezed
          ? _value.doNotPerform
          : doNotPerform // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      reported: reported == freezed
          ? _value.reported
          : reported // ignore: cast_nullable_to_non_nullable
              as MedicationReported?,
      medication: medication == freezed
          ? _value.medication
          : medication // ignore: cast_nullable_to_non_nullable
              as MedicationRequestMedication,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: encounter == freezed
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      supportingInformation: supportingInformation == freezed
          ? _value.supportingInformation
          : supportingInformation // ignore: cast_nullable_to_non_nullable
              as Reference?,
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
      recorder: recorder == freezed
          ? _value.recorder
          : recorder // ignore: cast_nullable_to_non_nullable
              as Reference?,
      reasonCode: reasonCode == freezed
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: reasonReference == freezed
          ? _value.reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      instantiatesCanonical: instantiatesCanonical == freezed
          ? _value.instantiatesCanonical
          : instantiatesCanonical // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      instantiatesUri: instantiatesUri == freezed
          ? _value.instantiatesUri
          : instantiatesUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      basedOn: basedOn == freezed
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as Reference?,
      groupIdentifier: groupIdentifier == freezed
          ? _value.groupIdentifier
          : groupIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      courseOfTherapyType: courseOfTherapyType == freezed
          ? _value.courseOfTherapyType
          : courseOfTherapyType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      insurance: insurance == freezed
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      dosageInstruction: dosageInstruction == freezed
          ? _value.dosageInstruction
          : dosageInstruction // ignore: cast_nullable_to_non_nullable
              as List<Dosage>?,
      dispenseRequest: dispenseRequest == freezed
          ? _value.dispenseRequest
          : dispenseRequest // ignore: cast_nullable_to_non_nullable
              as dynamic,
      substitution: substitution == freezed
          ? _value.substitution
          : substitution // ignore: cast_nullable_to_non_nullable
              as dynamic,
      priorPrescription: priorPrescription == freezed
          ? _value.priorPrescription
          : priorPrescription // ignore: cast_nullable_to_non_nullable
              as Reference?,
      detectedIssue: detectedIssue == freezed
          ? _value.detectedIssue
          : detectedIssue // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      eventHistory: eventHistory == freezed
          ? _value.eventHistory
          : eventHistory // ignore: cast_nullable_to_non_nullable
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
  $CodeableConceptCopyWith<$Res>? get statusReason {
    if (_value.statusReason == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.statusReason!, (value) {
      return _then(_value.copyWith(statusReason: value));
    });
  }

  @override
  $MedicationReportedCopyWith<$Res>? get reported {
    if (_value.reported == null) {
      return null;
    }

    return $MedicationReportedCopyWith<$Res>(_value.reported!, (value) {
      return _then(_value.copyWith(reported: value));
    });
  }

  @override
  $MedicationRequestMedicationCopyWith<$Res> get medication {
    return $MedicationRequestMedicationCopyWith<$Res>(_value.medication,
        (value) {
      return _then(_value.copyWith(medication: value));
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
  $ReferenceCopyWith<$Res>? get supportingInformation {
    if (_value.supportingInformation == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.supportingInformation!, (value) {
      return _then(_value.copyWith(supportingInformation: value));
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

  @override
  $ReferenceCopyWith<$Res>? get recorder {
    if (_value.recorder == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.recorder!, (value) {
      return _then(_value.copyWith(recorder: value));
    });
  }

  @override
  $ReferenceCopyWith<$Res>? get basedOn {
    if (_value.basedOn == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.basedOn!, (value) {
      return _then(_value.copyWith(basedOn: value));
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
  $CodeableConceptCopyWith<$Res>? get courseOfTherapyType {
    if (_value.courseOfTherapyType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.courseOfTherapyType!, (value) {
      return _then(_value.copyWith(courseOfTherapyType: value));
    });
  }

  @override
  $ReferenceCopyWith<$Res>? get priorPrescription {
    if (_value.priorPrescription == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.priorPrescription!, (value) {
      return _then(_value.copyWith(priorPrescription: value));
    });
  }
}

/// @nodoc
abstract class _$$_RMedicationRequestCopyWith<$Res>
    implements $RMedicationRequestCopyWith<$Res> {
  factory _$$_RMedicationRequestCopyWith(_$_RMedicationRequest value,
          $Res Function(_$_RMedicationRequest) then) =
      __$$_RMedicationRequestCopyWithImpl<$Res>;
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
      Code status,
      CodeableConcept? statusReason,
      Code? intent,
      List<CodeableConcept>? category,
      Code? priority,
      Boolean? doNotPerform,
      MedicationReported? reported,
      MedicationRequestMedication medication,
      Reference subject,
      Reference? encounter,
      Reference? supportingInformation,
      FhirDateTime? authoredOn,
      Reference? requester,
      CodeableConcept? performerType,
      Reference? performer,
      Reference? recorder,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      List<Reference>? instantiatesCanonical,
      FhirUri? instantiatesUri,
      Reference? basedOn,
      Identifier? groupIdentifier,
      CodeableConcept? courseOfTherapyType,
      List<Reference>? insurance,
      List<Annotation>? note,
      List<Dosage>? dosageInstruction,
      dynamic dispenseRequest,
      dynamic substitution,
      Reference? priorPrescription,
      List<Reference>? detectedIssue,
      List<Reference>? eventHistory});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get statusReason;
  @override
  $MedicationReportedCopyWith<$Res>? get reported;
  @override
  $MedicationRequestMedicationCopyWith<$Res> get medication;
  @override
  $ReferenceCopyWith<$Res> get subject;
  @override
  $ReferenceCopyWith<$Res>? get encounter;
  @override
  $ReferenceCopyWith<$Res>? get supportingInformation;
  @override
  $ReferenceCopyWith<$Res>? get requester;
  @override
  $CodeableConceptCopyWith<$Res>? get performerType;
  @override
  $ReferenceCopyWith<$Res>? get performer;
  @override
  $ReferenceCopyWith<$Res>? get recorder;
  @override
  $ReferenceCopyWith<$Res>? get basedOn;
  @override
  $IdentifierCopyWith<$Res>? get groupIdentifier;
  @override
  $CodeableConceptCopyWith<$Res>? get courseOfTherapyType;
  @override
  $ReferenceCopyWith<$Res>? get priorPrescription;
}

/// @nodoc
class __$$_RMedicationRequestCopyWithImpl<$Res>
    extends _$RMedicationRequestCopyWithImpl<$Res>
    implements _$$_RMedicationRequestCopyWith<$Res> {
  __$$_RMedicationRequestCopyWithImpl(
      _$_RMedicationRequest _value, $Res Function(_$_RMedicationRequest) _then)
      : super(_value, (v) => _then(v as _$_RMedicationRequest));

  @override
  _$_RMedicationRequest get _value => super._value as _$_RMedicationRequest;

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
    Object? status = freezed,
    Object? statusReason = freezed,
    Object? intent = freezed,
    Object? category = freezed,
    Object? priority = freezed,
    Object? doNotPerform = freezed,
    Object? reported = freezed,
    Object? medication = freezed,
    Object? subject = freezed,
    Object? encounter = freezed,
    Object? supportingInformation = freezed,
    Object? authoredOn = freezed,
    Object? requester = freezed,
    Object? performerType = freezed,
    Object? performer = freezed,
    Object? recorder = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? instantiatesCanonical = freezed,
    Object? instantiatesUri = freezed,
    Object? basedOn = freezed,
    Object? groupIdentifier = freezed,
    Object? courseOfTherapyType = freezed,
    Object? insurance = freezed,
    Object? note = freezed,
    Object? dosageInstruction = freezed,
    Object? dispenseRequest = freezed,
    Object? substitution = freezed,
    Object? priorPrescription = freezed,
    Object? detectedIssue = freezed,
    Object? eventHistory = freezed,
  }) {
    return _then(_$_RMedicationRequest(
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Code,
      statusReason: statusReason == freezed
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      intent: intent == freezed
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as Code?,
      category: category == freezed
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Code?,
      doNotPerform: doNotPerform == freezed
          ? _value.doNotPerform
          : doNotPerform // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      reported: reported == freezed
          ? _value.reported
          : reported // ignore: cast_nullable_to_non_nullable
              as MedicationReported?,
      medication: medication == freezed
          ? _value.medication
          : medication // ignore: cast_nullable_to_non_nullable
              as MedicationRequestMedication,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: encounter == freezed
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      supportingInformation: supportingInformation == freezed
          ? _value.supportingInformation
          : supportingInformation // ignore: cast_nullable_to_non_nullable
              as Reference?,
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
      recorder: recorder == freezed
          ? _value.recorder
          : recorder // ignore: cast_nullable_to_non_nullable
              as Reference?,
      reasonCode: reasonCode == freezed
          ? _value._reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: reasonReference == freezed
          ? _value._reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      instantiatesCanonical: instantiatesCanonical == freezed
          ? _value._instantiatesCanonical
          : instantiatesCanonical // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      instantiatesUri: instantiatesUri == freezed
          ? _value.instantiatesUri
          : instantiatesUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      basedOn: basedOn == freezed
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as Reference?,
      groupIdentifier: groupIdentifier == freezed
          ? _value.groupIdentifier
          : groupIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      courseOfTherapyType: courseOfTherapyType == freezed
          ? _value.courseOfTherapyType
          : courseOfTherapyType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      insurance: insurance == freezed
          ? _value._insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: note == freezed
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      dosageInstruction: dosageInstruction == freezed
          ? _value._dosageInstruction
          : dosageInstruction // ignore: cast_nullable_to_non_nullable
              as List<Dosage>?,
      dispenseRequest:
          dispenseRequest == freezed ? _value.dispenseRequest : dispenseRequest,
      substitution:
          substitution == freezed ? _value.substitution : substitution,
      priorPrescription: priorPrescription == freezed
          ? _value.priorPrescription
          : priorPrescription // ignore: cast_nullable_to_non_nullable
              as Reference?,
      detectedIssue: detectedIssue == freezed
          ? _value._detectedIssue
          : detectedIssue // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      eventHistory: eventHistory == freezed
          ? _value._eventHistory
          : eventHistory // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RMedicationRequest extends _RMedicationRequest {
  _$_RMedicationRequest(
      {this.resourceType = R5ResourceType.MedicationRequest,
      this.id,
      this.meta,
      this.implicitRules,
      this.language,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      required this.status,
      this.statusReason,
      required this.intent,
      final List<CodeableConcept>? category,
      this.priority,
      this.doNotPerform,
      this.reported,
      required this.medication,
      required this.subject,
      this.encounter,
      this.supportingInformation,
      this.authoredOn,
      this.requester,
      this.performerType,
      this.performer,
      this.recorder,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final List<Reference>? instantiatesCanonical,
      this.instantiatesUri,
      this.basedOn,
      this.groupIdentifier,
      this.courseOfTherapyType,
      final List<Reference>? insurance,
      final List<Annotation>? note,
      final List<Dosage>? dosageInstruction,
      this.dispenseRequest,
      this.substitution,
      this.priorPrescription,
      final List<Reference>? detectedIssue,
      final List<Reference>? eventHistory})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _category = category,
        _reasonCode = reasonCode,
        _reasonReference = reasonReference,
        _instantiatesCanonical = instantiatesCanonical,
        _insurance = insurance,
        _note = note,
        _dosageInstruction = dosageInstruction,
        _detectedIssue = detectedIssue,
        _eventHistory = eventHistory,
        super._();

  factory _$_RMedicationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RMedicationRequestFromJson(json);

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
  final Code status;
  @override
  final CodeableConcept? statusReason;
  @override
  final Code? intent;
  final List<CodeableConcept>? _category;
  @override
  List<CodeableConcept>? get category {
    final value = _category;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Code? priority;
  @override
  final Boolean? doNotPerform;
  @override
  final MedicationReported? reported;
  @override
  final MedicationRequestMedication medication;
  @override
  final Reference subject;
  @override
  final Reference? encounter;
  @override
  final Reference? supportingInformation;
  @override
  final FhirDateTime? authoredOn;
  @override
  final Reference? requester;
  @override
  final CodeableConcept? performerType;
  @override
  final Reference? performer;
  @override
  final Reference? recorder;
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

  final List<Reference>? _instantiatesCanonical;
  @override
  List<Reference>? get instantiatesCanonical {
    final value = _instantiatesCanonical;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirUri? instantiatesUri;
  @override
  final Reference? basedOn;
  @override
  final Identifier? groupIdentifier;
  @override
  final CodeableConcept? courseOfTherapyType;
  final List<Reference>? _insurance;
  @override
  List<Reference>? get insurance {
    final value = _insurance;
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

  final List<Dosage>? _dosageInstruction;
  @override
  List<Dosage>? get dosageInstruction {
    final value = _dosageInstruction;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic dispenseRequest;
  @override
  final dynamic substitution;
  @override
  final Reference? priorPrescription;
  final List<Reference>? _detectedIssue;
  @override
  List<Reference>? get detectedIssue {
    final value = _detectedIssue;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _eventHistory;
  @override
  List<Reference>? get eventHistory {
    final value = _eventHistory;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RMedicationRequest(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, language: $language, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusReason: $statusReason, intent: $intent, category: $category, priority: $priority, doNotPerform: $doNotPerform, reported: $reported, medication: $medication, subject: $subject, encounter: $encounter, supportingInformation: $supportingInformation, authoredOn: $authoredOn, requester: $requester, performerType: $performerType, performer: $performer, recorder: $recorder, reasonCode: $reasonCode, reasonReference: $reasonReference, instantiatesCanonical: $instantiatesCanonical, instantiatesUri: $instantiatesUri, basedOn: $basedOn, groupIdentifier: $groupIdentifier, courseOfTherapyType: $courseOfTherapyType, insurance: $insurance, note: $note, dosageInstruction: $dosageInstruction, dispenseRequest: $dispenseRequest, substitution: $substitution, priorPrescription: $priorPrescription, detectedIssue: $detectedIssue, eventHistory: $eventHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RMedicationRequest &&
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
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.statusReason, statusReason) &&
            const DeepCollectionEquality().equals(other.intent, intent) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other.priority, priority) &&
            const DeepCollectionEquality()
                .equals(other.doNotPerform, doNotPerform) &&
            const DeepCollectionEquality().equals(other.reported, reported) &&
            const DeepCollectionEquality()
                .equals(other.medication, medication) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.encounter, encounter) &&
            const DeepCollectionEquality()
                .equals(other.supportingInformation, supportingInformation) &&
            const DeepCollectionEquality()
                .equals(other.authoredOn, authoredOn) &&
            const DeepCollectionEquality().equals(other.requester, requester) &&
            const DeepCollectionEquality()
                .equals(other.performerType, performerType) &&
            const DeepCollectionEquality().equals(other.performer, performer) &&
            const DeepCollectionEquality().equals(other.recorder, recorder) &&
            const DeepCollectionEquality()
                .equals(other._reasonCode, _reasonCode) &&
            const DeepCollectionEquality()
                .equals(other._reasonReference, _reasonReference) &&
            const DeepCollectionEquality()
                .equals(other._instantiatesCanonical, _instantiatesCanonical) &&
            const DeepCollectionEquality()
                .equals(other.instantiatesUri, instantiatesUri) &&
            const DeepCollectionEquality().equals(other.basedOn, basedOn) &&
            const DeepCollectionEquality()
                .equals(other.groupIdentifier, groupIdentifier) &&
            const DeepCollectionEquality()
                .equals(other.courseOfTherapyType, courseOfTherapyType) &&
            const DeepCollectionEquality()
                .equals(other._insurance, _insurance) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality()
                .equals(other._dosageInstruction, _dosageInstruction) &&
            const DeepCollectionEquality()
                .equals(other.dispenseRequest, dispenseRequest) &&
            const DeepCollectionEquality()
                .equals(other.substitution, substitution) &&
            const DeepCollectionEquality()
                .equals(other.priorPrescription, priorPrescription) &&
            const DeepCollectionEquality()
                .equals(other._detectedIssue, _detectedIssue) &&
            const DeepCollectionEquality()
                .equals(other._eventHistory, _eventHistory));
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
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(statusReason),
        const DeepCollectionEquality().hash(intent),
        const DeepCollectionEquality().hash(_category),
        const DeepCollectionEquality().hash(priority),
        const DeepCollectionEquality().hash(doNotPerform),
        const DeepCollectionEquality().hash(reported),
        const DeepCollectionEquality().hash(medication),
        const DeepCollectionEquality().hash(subject),
        const DeepCollectionEquality().hash(encounter),
        const DeepCollectionEquality().hash(supportingInformation),
        const DeepCollectionEquality().hash(authoredOn),
        const DeepCollectionEquality().hash(requester),
        const DeepCollectionEquality().hash(performerType),
        const DeepCollectionEquality().hash(performer),
        const DeepCollectionEquality().hash(recorder),
        const DeepCollectionEquality().hash(_reasonCode),
        const DeepCollectionEquality().hash(_reasonReference),
        const DeepCollectionEquality().hash(_instantiatesCanonical),
        const DeepCollectionEquality().hash(instantiatesUri),
        const DeepCollectionEquality().hash(basedOn),
        const DeepCollectionEquality().hash(groupIdentifier),
        const DeepCollectionEquality().hash(courseOfTherapyType),
        const DeepCollectionEquality().hash(_insurance),
        const DeepCollectionEquality().hash(_note),
        const DeepCollectionEquality().hash(_dosageInstruction),
        const DeepCollectionEquality().hash(dispenseRequest),
        const DeepCollectionEquality().hash(substitution),
        const DeepCollectionEquality().hash(priorPrescription),
        const DeepCollectionEquality().hash(_detectedIssue),
        const DeepCollectionEquality().hash(_eventHistory)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_RMedicationRequestCopyWith<_$_RMedicationRequest> get copyWith =>
      __$$_RMedicationRequestCopyWithImpl<_$_RMedicationRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RMedicationRequestToJson(this);
  }
}

abstract class _RMedicationRequest extends RMedicationRequest {
  factory _RMedicationRequest(
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
      required final Code status,
      final CodeableConcept? statusReason,
      required final Code? intent,
      final List<CodeableConcept>? category,
      final Code? priority,
      final Boolean? doNotPerform,
      final MedicationReported? reported,
      required final MedicationRequestMedication medication,
      required final Reference subject,
      final Reference? encounter,
      final Reference? supportingInformation,
      final FhirDateTime? authoredOn,
      final Reference? requester,
      final CodeableConcept? performerType,
      final Reference? performer,
      final Reference? recorder,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final List<Reference>? instantiatesCanonical,
      final FhirUri? instantiatesUri,
      final Reference? basedOn,
      final Identifier? groupIdentifier,
      final CodeableConcept? courseOfTherapyType,
      final List<Reference>? insurance,
      final List<Annotation>? note,
      final List<Dosage>? dosageInstruction,
      final dynamic dispenseRequest,
      final dynamic substitution,
      final Reference? priorPrescription,
      final List<Reference>? detectedIssue,
      final List<Reference>? eventHistory}) = _$_RMedicationRequest;
  _RMedicationRequest._() : super._();

  factory _RMedicationRequest.fromJson(Map<String, dynamic> json) =
      _$_RMedicationRequest.fromJson;

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
  Code get status => throw _privateConstructorUsedError;
  @override
  CodeableConcept? get statusReason => throw _privateConstructorUsedError;
  @override
  Code? get intent => throw _privateConstructorUsedError;
  @override
  List<CodeableConcept>? get category => throw _privateConstructorUsedError;
  @override
  Code? get priority => throw _privateConstructorUsedError;
  @override
  Boolean? get doNotPerform => throw _privateConstructorUsedError;
  @override
  MedicationReported? get reported => throw _privateConstructorUsedError;
  @override
  MedicationRequestMedication get medication =>
      throw _privateConstructorUsedError;
  @override
  Reference get subject => throw _privateConstructorUsedError;
  @override
  Reference? get encounter => throw _privateConstructorUsedError;
  @override
  Reference? get supportingInformation => throw _privateConstructorUsedError;
  @override
  FhirDateTime? get authoredOn => throw _privateConstructorUsedError;
  @override
  Reference? get requester => throw _privateConstructorUsedError;
  @override
  CodeableConcept? get performerType => throw _privateConstructorUsedError;
  @override
  Reference? get performer => throw _privateConstructorUsedError;
  @override
  Reference? get recorder => throw _privateConstructorUsedError;
  @override
  List<CodeableConcept>? get reasonCode => throw _privateConstructorUsedError;
  @override
  List<Reference>? get reasonReference => throw _privateConstructorUsedError;
  @override
  List<Reference>? get instantiatesCanonical =>
      throw _privateConstructorUsedError;
  @override
  FhirUri? get instantiatesUri => throw _privateConstructorUsedError;
  @override
  Reference? get basedOn => throw _privateConstructorUsedError;
  @override
  Identifier? get groupIdentifier => throw _privateConstructorUsedError;
  @override
  CodeableConcept? get courseOfTherapyType =>
      throw _privateConstructorUsedError;
  @override
  List<Reference>? get insurance => throw _privateConstructorUsedError;
  @override
  List<Annotation>? get note => throw _privateConstructorUsedError;
  @override
  List<Dosage>? get dosageInstruction => throw _privateConstructorUsedError;
  @override
  dynamic get dispenseRequest => throw _privateConstructorUsedError;
  @override
  dynamic get substitution => throw _privateConstructorUsedError;
  @override
  Reference? get priorPrescription => throw _privateConstructorUsedError;
  @override
  List<Reference>? get detectedIssue => throw _privateConstructorUsedError;
  @override
  List<Reference>? get eventHistory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RMedicationRequestCopyWith<_$_RMedicationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicationReported _$MedicationReportedFromJson(Map<String, dynamic> json) {
  return _MedicationReported.fromJson(json);
}

/// @nodoc
mixin _$MedicationReported {
  Boolean? get boolean => throw _privateConstructorUsedError;
  Reference? get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicationReportedCopyWith<MedicationReported> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationReportedCopyWith<$Res> {
  factory $MedicationReportedCopyWith(
          MedicationReported value, $Res Function(MedicationReported) then) =
      _$MedicationReportedCopyWithImpl<$Res>;
  $Res call({Boolean? boolean, Reference? reference});

  $ReferenceCopyWith<$Res>? get reference;
}

/// @nodoc
class _$MedicationReportedCopyWithImpl<$Res>
    implements $MedicationReportedCopyWith<$Res> {
  _$MedicationReportedCopyWithImpl(this._value, this._then);

  final MedicationReported _value;
  // ignore: unused_field
  final $Res Function(MedicationReported) _then;

  @override
  $Res call({
    Object? boolean = freezed,
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      boolean: boolean == freezed
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference?,
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
}

/// @nodoc
abstract class _$$_MedicationReportedCopyWith<$Res>
    implements $MedicationReportedCopyWith<$Res> {
  factory _$$_MedicationReportedCopyWith(_$_MedicationReported value,
          $Res Function(_$_MedicationReported) then) =
      __$$_MedicationReportedCopyWithImpl<$Res>;
  @override
  $Res call({Boolean? boolean, Reference? reference});

  @override
  $ReferenceCopyWith<$Res>? get reference;
}

/// @nodoc
class __$$_MedicationReportedCopyWithImpl<$Res>
    extends _$MedicationReportedCopyWithImpl<$Res>
    implements _$$_MedicationReportedCopyWith<$Res> {
  __$$_MedicationReportedCopyWithImpl(
      _$_MedicationReported _value, $Res Function(_$_MedicationReported) _then)
      : super(_value, (v) => _then(v as _$_MedicationReported));

  @override
  _$_MedicationReported get _value => super._value as _$_MedicationReported;

  @override
  $Res call({
    Object? boolean = freezed,
    Object? reference = freezed,
  }) {
    return _then(_$_MedicationReported(
      boolean: boolean == freezed
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicationReported extends _MedicationReported {
  _$_MedicationReported({this.boolean, this.reference}) : super._();

  factory _$_MedicationReported.fromJson(Map<String, dynamic> json) =>
      _$$_MedicationReportedFromJson(json);

  @override
  final Boolean? boolean;
  @override
  final Reference? reference;

  @override
  String toString() {
    return 'MedicationReported(boolean: $boolean, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicationReported &&
            const DeepCollectionEquality().equals(other.boolean, boolean) &&
            const DeepCollectionEquality().equals(other.reference, reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(boolean),
      const DeepCollectionEquality().hash(reference));

  @JsonKey(ignore: true)
  @override
  _$$_MedicationReportedCopyWith<_$_MedicationReported> get copyWith =>
      __$$_MedicationReportedCopyWithImpl<_$_MedicationReported>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicationReportedToJson(this);
  }
}

abstract class _MedicationReported extends MedicationReported {
  factory _MedicationReported(
      {final Boolean? boolean,
      final Reference? reference}) = _$_MedicationReported;
  _MedicationReported._() : super._();

  factory _MedicationReported.fromJson(Map<String, dynamic> json) =
      _$_MedicationReported.fromJson;

  @override
  Boolean? get boolean => throw _privateConstructorUsedError;
  @override
  Reference? get reference => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MedicationReportedCopyWith<_$_MedicationReported> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicationRequestMedication _$MedicationRequestMedicationFromJson(
    Map<String, dynamic> json) {
  return _MedicationRequestMedication.fromJson(json);
}

/// @nodoc
mixin _$MedicationRequestMedication {
  Reference? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: "CodeableConcept")
  CodeableConcept? get codeableConcept => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicationRequestMedicationCopyWith<MedicationRequestMedication>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationRequestMedicationCopyWith<$Res> {
  factory $MedicationRequestMedicationCopyWith(
          MedicationRequestMedication value,
          $Res Function(MedicationRequestMedication) then) =
      _$MedicationRequestMedicationCopyWithImpl<$Res>;
  $Res call(
      {Reference? reference,
      @JsonKey(name: "CodeableConcept") CodeableConcept? codeableConcept});

  $ReferenceCopyWith<$Res>? get reference;
  $CodeableConceptCopyWith<$Res>? get codeableConcept;
}

/// @nodoc
class _$MedicationRequestMedicationCopyWithImpl<$Res>
    implements $MedicationRequestMedicationCopyWith<$Res> {
  _$MedicationRequestMedicationCopyWithImpl(this._value, this._then);

  final MedicationRequestMedication _value;
  // ignore: unused_field
  final $Res Function(MedicationRequestMedication) _then;

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
abstract class _$$_MedicationRequestMedicationCopyWith<$Res>
    implements $MedicationRequestMedicationCopyWith<$Res> {
  factory _$$_MedicationRequestMedicationCopyWith(
          _$_MedicationRequestMedication value,
          $Res Function(_$_MedicationRequestMedication) then) =
      __$$_MedicationRequestMedicationCopyWithImpl<$Res>;
  @override
  $Res call(
      {Reference? reference,
      @JsonKey(name: "CodeableConcept") CodeableConcept? codeableConcept});

  @override
  $ReferenceCopyWith<$Res>? get reference;
  @override
  $CodeableConceptCopyWith<$Res>? get codeableConcept;
}

/// @nodoc
class __$$_MedicationRequestMedicationCopyWithImpl<$Res>
    extends _$MedicationRequestMedicationCopyWithImpl<$Res>
    implements _$$_MedicationRequestMedicationCopyWith<$Res> {
  __$$_MedicationRequestMedicationCopyWithImpl(
      _$_MedicationRequestMedication _value,
      $Res Function(_$_MedicationRequestMedication) _then)
      : super(_value, (v) => _then(v as _$_MedicationRequestMedication));

  @override
  _$_MedicationRequestMedication get _value =>
      super._value as _$_MedicationRequestMedication;

  @override
  $Res call({
    Object? reference = freezed,
    Object? codeableConcept = freezed,
  }) {
    return _then(_$_MedicationRequestMedication(
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
class _$_MedicationRequestMedication extends _MedicationRequestMedication {
  _$_MedicationRequestMedication(
      {this.reference, @JsonKey(name: "CodeableConcept") this.codeableConcept})
      : super._();

  factory _$_MedicationRequestMedication.fromJson(Map<String, dynamic> json) =>
      _$$_MedicationRequestMedicationFromJson(json);

  @override
  final Reference? reference;
  @override
  @JsonKey(name: "CodeableConcept")
  final CodeableConcept? codeableConcept;

  @override
  String toString() {
    return 'MedicationRequestMedication(reference: $reference, codeableConcept: $codeableConcept)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicationRequestMedication &&
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
  _$$_MedicationRequestMedicationCopyWith<_$_MedicationRequestMedication>
      get copyWith => __$$_MedicationRequestMedicationCopyWithImpl<
          _$_MedicationRequestMedication>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicationRequestMedicationToJson(this);
  }
}

abstract class _MedicationRequestMedication
    extends MedicationRequestMedication {
  factory _MedicationRequestMedication(
          {final Reference? reference,
          @JsonKey(name: "CodeableConcept")
              final CodeableConcept? codeableConcept}) =
      _$_MedicationRequestMedication;
  _MedicationRequestMedication._() : super._();

  factory _MedicationRequestMedication.fromJson(Map<String, dynamic> json) =
      _$_MedicationRequestMedication.fromJson;

  @override
  Reference? get reference => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CodeableConcept")
  CodeableConcept? get codeableConcept => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MedicationRequestMedicationCopyWith<_$_MedicationRequestMedication>
      get copyWith => throw _privateConstructorUsedError;
}
