// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RPatient _$RPatientFromJson(Map<String, dynamic> json) {
  return _RPatient.fromJson(json);
}

/// @nodoc
mixin _$RPatient {
  @JsonKey(unknownEnumValue: R5ResourceType.Patient)
  R5ResourceType get resourceType => throw _privateConstructorUsedError;
  Id? get id => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;
  FhirUri? get implicitRules => throw _privateConstructorUsedError;
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement => throw _privateConstructorUsedError;
  Code? get language => throw _privateConstructorUsedError;
  @JsonKey(name: '_language')
  Element? get languageElement => throw _privateConstructorUsedError;
  Narrative? get text => throw _privateConstructorUsedError;
  List<Resource>? get contained => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;
  Boolean? get active => throw _privateConstructorUsedError;
  @JsonKey(name: '_active')
  Element? get activeElement => throw _privateConstructorUsedError;
  List<HumanName>? get name => throw _privateConstructorUsedError;
  List<ContactPoint>? get telecom => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PatientGender.other)
  PatientGender? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: '_gender')
  Element? get genderElement => throw _privateConstructorUsedError;
  Date? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_birthDate')
  Element? get birthDateElement => throw _privateConstructorUsedError;
  Boolean? get deceasedBoolean => throw _privateConstructorUsedError;
  @JsonKey(name: '_deceasedBoolean')
  Element? get deceasedBooleanElement => throw _privateConstructorUsedError;
  FhirDateTime? get deceasedDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: '_deceasedDateTime')
  Element? get deceasedDateTimeElement => throw _privateConstructorUsedError;
  List<Address>? get address => throw _privateConstructorUsedError;
  CodeableConcept? get maritalStatus => throw _privateConstructorUsedError;
  Boolean? get multipleBirthBoolean => throw _privateConstructorUsedError;
  @JsonKey(name: '_multipleBirthBoolean')
  Element? get multipleBirthBooleanElement =>
      throw _privateConstructorUsedError;
  Integer? get multipleBirthInteger => throw _privateConstructorUsedError;
  @JsonKey(name: '_multipleBirthInteger')
  Element? get multipleBirthIntegerElement =>
      throw _privateConstructorUsedError;
  List<Attachment>? get photo => throw _privateConstructorUsedError;
  List<PatientContact>? get contact => throw _privateConstructorUsedError;
  List<PatientCommunication>? get communication =>
      throw _privateConstructorUsedError;
  List<Reference>? get generalPractitioner =>
      throw _privateConstructorUsedError;
  Reference? get managingOrganization => throw _privateConstructorUsedError;
  List<PatientLink>? get link => throw _privateConstructorUsedError;
  RUsCoreEthnicity? get ethnicity => throw _privateConstructorUsedError;
  RUsCoreRace? get race => throw _privateConstructorUsedError;
  RDeceased? get deceased => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthsex')
  String? get birthSex => throw _privateConstructorUsedError;
  RMultipleBirth? get multipleBirth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RPatientCopyWith<RPatient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RPatientCopyWith<$Res> {
  factory $RPatientCopyWith(RPatient value, $Res Function(RPatient) then) =
      _$RPatientCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(unknownEnumValue: R5ResourceType.Patient)
          R5ResourceType resourceType,
      Id? id,
      Meta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
          Element? implicitRulesElement,
      Code? language,
      @JsonKey(name: '_language')
          Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension')
          List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      Boolean? active,
      @JsonKey(name: '_active')
          Element? activeElement,
      List<HumanName>? name,
      List<ContactPoint>? telecom,
      @JsonKey(unknownEnumValue: PatientGender.other)
          PatientGender? gender,
      @JsonKey(name: '_gender')
          Element? genderElement,
      Date? birthDate,
      @JsonKey(name: '_birthDate')
          Element? birthDateElement,
      Boolean? deceasedBoolean,
      @JsonKey(name: '_deceasedBoolean')
          Element? deceasedBooleanElement,
      FhirDateTime? deceasedDateTime,
      @JsonKey(name: '_deceasedDateTime')
          Element? deceasedDateTimeElement,
      List<Address>? address,
      CodeableConcept? maritalStatus,
      Boolean? multipleBirthBoolean,
      @JsonKey(name: '_multipleBirthBoolean')
          Element? multipleBirthBooleanElement,
      Integer? multipleBirthInteger,
      @JsonKey(name: '_multipleBirthInteger')
          Element? multipleBirthIntegerElement,
      List<Attachment>? photo,
      List<PatientContact>? contact,
      List<PatientCommunication>? communication,
      List<Reference>? generalPractitioner,
      Reference? managingOrganization,
      List<PatientLink>? link,
      RUsCoreEthnicity? ethnicity,
      RUsCoreRace? race,
      RDeceased? deceased,
      @JsonKey(name: 'birthsex')
          String? birthSex,
      RMultipleBirth? multipleBirth});

  $MetaCopyWith<$Res>? get meta;
  $ElementCopyWith<$Res>? get implicitRulesElement;
  $ElementCopyWith<$Res>? get languageElement;
  $NarrativeCopyWith<$Res>? get text;
  $ElementCopyWith<$Res>? get activeElement;
  $ElementCopyWith<$Res>? get genderElement;
  $ElementCopyWith<$Res>? get birthDateElement;
  $ElementCopyWith<$Res>? get deceasedBooleanElement;
  $ElementCopyWith<$Res>? get deceasedDateTimeElement;
  $CodeableConceptCopyWith<$Res>? get maritalStatus;
  $ElementCopyWith<$Res>? get multipleBirthBooleanElement;
  $ElementCopyWith<$Res>? get multipleBirthIntegerElement;
  $ReferenceCopyWith<$Res>? get managingOrganization;
  $RUsCoreEthnicityCopyWith<$Res>? get ethnicity;
  $RUsCoreRaceCopyWith<$Res>? get race;
  $RDeceasedCopyWith<$Res>? get deceased;
  $RMultipleBirthCopyWith<$Res>? get multipleBirth;
}

/// @nodoc
class _$RPatientCopyWithImpl<$Res> implements $RPatientCopyWith<$Res> {
  _$RPatientCopyWithImpl(this._value, this._then);

  final RPatient _value;
  // ignore: unused_field
  final $Res Function(RPatient) _then;

  @override
  $Res call({
    Object? resourceType = freezed,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? name = freezed,
    Object? telecom = freezed,
    Object? gender = freezed,
    Object? genderElement = freezed,
    Object? birthDate = freezed,
    Object? birthDateElement = freezed,
    Object? deceasedBoolean = freezed,
    Object? deceasedBooleanElement = freezed,
    Object? deceasedDateTime = freezed,
    Object? deceasedDateTimeElement = freezed,
    Object? address = freezed,
    Object? maritalStatus = freezed,
    Object? multipleBirthBoolean = freezed,
    Object? multipleBirthBooleanElement = freezed,
    Object? multipleBirthInteger = freezed,
    Object? multipleBirthIntegerElement = freezed,
    Object? photo = freezed,
    Object? contact = freezed,
    Object? communication = freezed,
    Object? generalPractitioner = freezed,
    Object? managingOrganization = freezed,
    Object? link = freezed,
    Object? ethnicity = freezed,
    Object? race = freezed,
    Object? deceased = freezed,
    Object? birthSex = freezed,
    Object? multipleBirth = freezed,
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
      implicitRulesElement: implicitRulesElement == freezed
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Code?,
      languageElement: languageElement == freezed
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
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
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      activeElement: activeElement == freezed
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as List<HumanName>?,
      telecom: telecom == freezed
          ? _value.telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as PatientGender?,
      genderElement: genderElement == freezed
          ? _value.genderElement
          : genderElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      birthDateElement: birthDateElement == freezed
          ? _value.birthDateElement
          : birthDateElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      deceasedBoolean: deceasedBoolean == freezed
          ? _value.deceasedBoolean
          : deceasedBoolean // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      deceasedBooleanElement: deceasedBooleanElement == freezed
          ? _value.deceasedBooleanElement
          : deceasedBooleanElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      deceasedDateTime: deceasedDateTime == freezed
          ? _value.deceasedDateTime
          : deceasedDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      deceasedDateTimeElement: deceasedDateTimeElement == freezed
          ? _value.deceasedDateTimeElement
          : deceasedDateTimeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      maritalStatus: maritalStatus == freezed
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      multipleBirthBoolean: multipleBirthBoolean == freezed
          ? _value.multipleBirthBoolean
          : multipleBirthBoolean // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      multipleBirthBooleanElement: multipleBirthBooleanElement == freezed
          ? _value.multipleBirthBooleanElement
          : multipleBirthBooleanElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      multipleBirthInteger: multipleBirthInteger == freezed
          ? _value.multipleBirthInteger
          : multipleBirthInteger // ignore: cast_nullable_to_non_nullable
              as Integer?,
      multipleBirthIntegerElement: multipleBirthIntegerElement == freezed
          ? _value.multipleBirthIntegerElement
          : multipleBirthIntegerElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<PatientContact>?,
      communication: communication == freezed
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as List<PatientCommunication>?,
      generalPractitioner: generalPractitioner == freezed
          ? _value.generalPractitioner
          : generalPractitioner // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      managingOrganization: managingOrganization == freezed
          ? _value.managingOrganization
          : managingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as List<PatientLink>?,
      ethnicity: ethnicity == freezed
          ? _value.ethnicity
          : ethnicity // ignore: cast_nullable_to_non_nullable
              as RUsCoreEthnicity?,
      race: race == freezed
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as RUsCoreRace?,
      deceased: deceased == freezed
          ? _value.deceased
          : deceased // ignore: cast_nullable_to_non_nullable
              as RDeceased?,
      birthSex: birthSex == freezed
          ? _value.birthSex
          : birthSex // ignore: cast_nullable_to_non_nullable
              as String?,
      multipleBirth: multipleBirth == freezed
          ? _value.multipleBirth
          : multipleBirth // ignore: cast_nullable_to_non_nullable
              as RMultipleBirth?,
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
  $ElementCopyWith<$Res>? get implicitRulesElement {
    if (_value.implicitRulesElement == null) {
      return null;
    }

    return $ElementCopyWith<$Res>(_value.implicitRulesElement!, (value) {
      return _then(_value.copyWith(implicitRulesElement: value));
    });
  }

  @override
  $ElementCopyWith<$Res>? get languageElement {
    if (_value.languageElement == null) {
      return null;
    }

    return $ElementCopyWith<$Res>(_value.languageElement!, (value) {
      return _then(_value.copyWith(languageElement: value));
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
  $ElementCopyWith<$Res>? get activeElement {
    if (_value.activeElement == null) {
      return null;
    }

    return $ElementCopyWith<$Res>(_value.activeElement!, (value) {
      return _then(_value.copyWith(activeElement: value));
    });
  }

  @override
  $ElementCopyWith<$Res>? get genderElement {
    if (_value.genderElement == null) {
      return null;
    }

    return $ElementCopyWith<$Res>(_value.genderElement!, (value) {
      return _then(_value.copyWith(genderElement: value));
    });
  }

  @override
  $ElementCopyWith<$Res>? get birthDateElement {
    if (_value.birthDateElement == null) {
      return null;
    }

    return $ElementCopyWith<$Res>(_value.birthDateElement!, (value) {
      return _then(_value.copyWith(birthDateElement: value));
    });
  }

  @override
  $ElementCopyWith<$Res>? get deceasedBooleanElement {
    if (_value.deceasedBooleanElement == null) {
      return null;
    }

    return $ElementCopyWith<$Res>(_value.deceasedBooleanElement!, (value) {
      return _then(_value.copyWith(deceasedBooleanElement: value));
    });
  }

  @override
  $ElementCopyWith<$Res>? get deceasedDateTimeElement {
    if (_value.deceasedDateTimeElement == null) {
      return null;
    }

    return $ElementCopyWith<$Res>(_value.deceasedDateTimeElement!, (value) {
      return _then(_value.copyWith(deceasedDateTimeElement: value));
    });
  }

  @override
  $CodeableConceptCopyWith<$Res>? get maritalStatus {
    if (_value.maritalStatus == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.maritalStatus!, (value) {
      return _then(_value.copyWith(maritalStatus: value));
    });
  }

  @override
  $ElementCopyWith<$Res>? get multipleBirthBooleanElement {
    if (_value.multipleBirthBooleanElement == null) {
      return null;
    }

    return $ElementCopyWith<$Res>(_value.multipleBirthBooleanElement!, (value) {
      return _then(_value.copyWith(multipleBirthBooleanElement: value));
    });
  }

  @override
  $ElementCopyWith<$Res>? get multipleBirthIntegerElement {
    if (_value.multipleBirthIntegerElement == null) {
      return null;
    }

    return $ElementCopyWith<$Res>(_value.multipleBirthIntegerElement!, (value) {
      return _then(_value.copyWith(multipleBirthIntegerElement: value));
    });
  }

  @override
  $ReferenceCopyWith<$Res>? get managingOrganization {
    if (_value.managingOrganization == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.managingOrganization!, (value) {
      return _then(_value.copyWith(managingOrganization: value));
    });
  }

  @override
  $RUsCoreEthnicityCopyWith<$Res>? get ethnicity {
    if (_value.ethnicity == null) {
      return null;
    }

    return $RUsCoreEthnicityCopyWith<$Res>(_value.ethnicity!, (value) {
      return _then(_value.copyWith(ethnicity: value));
    });
  }

  @override
  $RUsCoreRaceCopyWith<$Res>? get race {
    if (_value.race == null) {
      return null;
    }

    return $RUsCoreRaceCopyWith<$Res>(_value.race!, (value) {
      return _then(_value.copyWith(race: value));
    });
  }

  @override
  $RDeceasedCopyWith<$Res>? get deceased {
    if (_value.deceased == null) {
      return null;
    }

    return $RDeceasedCopyWith<$Res>(_value.deceased!, (value) {
      return _then(_value.copyWith(deceased: value));
    });
  }

  @override
  $RMultipleBirthCopyWith<$Res>? get multipleBirth {
    if (_value.multipleBirth == null) {
      return null;
    }

    return $RMultipleBirthCopyWith<$Res>(_value.multipleBirth!, (value) {
      return _then(_value.copyWith(multipleBirth: value));
    });
  }
}

/// @nodoc
abstract class _$$_RPatientCopyWith<$Res> implements $RPatientCopyWith<$Res> {
  factory _$$_RPatientCopyWith(
          _$_RPatient value, $Res Function(_$_RPatient) then) =
      __$$_RPatientCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(unknownEnumValue: R5ResourceType.Patient)
          R5ResourceType resourceType,
      Id? id,
      Meta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
          Element? implicitRulesElement,
      Code? language,
      @JsonKey(name: '_language')
          Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension')
          List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      Boolean? active,
      @JsonKey(name: '_active')
          Element? activeElement,
      List<HumanName>? name,
      List<ContactPoint>? telecom,
      @JsonKey(unknownEnumValue: PatientGender.other)
          PatientGender? gender,
      @JsonKey(name: '_gender')
          Element? genderElement,
      Date? birthDate,
      @JsonKey(name: '_birthDate')
          Element? birthDateElement,
      Boolean? deceasedBoolean,
      @JsonKey(name: '_deceasedBoolean')
          Element? deceasedBooleanElement,
      FhirDateTime? deceasedDateTime,
      @JsonKey(name: '_deceasedDateTime')
          Element? deceasedDateTimeElement,
      List<Address>? address,
      CodeableConcept? maritalStatus,
      Boolean? multipleBirthBoolean,
      @JsonKey(name: '_multipleBirthBoolean')
          Element? multipleBirthBooleanElement,
      Integer? multipleBirthInteger,
      @JsonKey(name: '_multipleBirthInteger')
          Element? multipleBirthIntegerElement,
      List<Attachment>? photo,
      List<PatientContact>? contact,
      List<PatientCommunication>? communication,
      List<Reference>? generalPractitioner,
      Reference? managingOrganization,
      List<PatientLink>? link,
      RUsCoreEthnicity? ethnicity,
      RUsCoreRace? race,
      RDeceased? deceased,
      @JsonKey(name: 'birthsex')
          String? birthSex,
      RMultipleBirth? multipleBirth});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $ElementCopyWith<$Res>? get implicitRulesElement;
  @override
  $ElementCopyWith<$Res>? get languageElement;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ElementCopyWith<$Res>? get activeElement;
  @override
  $ElementCopyWith<$Res>? get genderElement;
  @override
  $ElementCopyWith<$Res>? get birthDateElement;
  @override
  $ElementCopyWith<$Res>? get deceasedBooleanElement;
  @override
  $ElementCopyWith<$Res>? get deceasedDateTimeElement;
  @override
  $CodeableConceptCopyWith<$Res>? get maritalStatus;
  @override
  $ElementCopyWith<$Res>? get multipleBirthBooleanElement;
  @override
  $ElementCopyWith<$Res>? get multipleBirthIntegerElement;
  @override
  $ReferenceCopyWith<$Res>? get managingOrganization;
  @override
  $RUsCoreEthnicityCopyWith<$Res>? get ethnicity;
  @override
  $RUsCoreRaceCopyWith<$Res>? get race;
  @override
  $RDeceasedCopyWith<$Res>? get deceased;
  @override
  $RMultipleBirthCopyWith<$Res>? get multipleBirth;
}

/// @nodoc
class __$$_RPatientCopyWithImpl<$Res> extends _$RPatientCopyWithImpl<$Res>
    implements _$$_RPatientCopyWith<$Res> {
  __$$_RPatientCopyWithImpl(
      _$_RPatient _value, $Res Function(_$_RPatient) _then)
      : super(_value, (v) => _then(v as _$_RPatient));

  @override
  _$_RPatient get _value => super._value as _$_RPatient;

  @override
  $Res call({
    Object? resourceType = freezed,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? name = freezed,
    Object? telecom = freezed,
    Object? gender = freezed,
    Object? genderElement = freezed,
    Object? birthDate = freezed,
    Object? birthDateElement = freezed,
    Object? deceasedBoolean = freezed,
    Object? deceasedBooleanElement = freezed,
    Object? deceasedDateTime = freezed,
    Object? deceasedDateTimeElement = freezed,
    Object? address = freezed,
    Object? maritalStatus = freezed,
    Object? multipleBirthBoolean = freezed,
    Object? multipleBirthBooleanElement = freezed,
    Object? multipleBirthInteger = freezed,
    Object? multipleBirthIntegerElement = freezed,
    Object? photo = freezed,
    Object? contact = freezed,
    Object? communication = freezed,
    Object? generalPractitioner = freezed,
    Object? managingOrganization = freezed,
    Object? link = freezed,
    Object? ethnicity = freezed,
    Object? race = freezed,
    Object? deceased = freezed,
    Object? birthSex = freezed,
    Object? multipleBirth = freezed,
  }) {
    return _then(_$_RPatient(
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
      implicitRulesElement: implicitRulesElement == freezed
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Code?,
      languageElement: languageElement == freezed
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
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
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      activeElement: activeElement == freezed
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      name: name == freezed
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as List<HumanName>?,
      telecom: telecom == freezed
          ? _value._telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as PatientGender?,
      genderElement: genderElement == freezed
          ? _value.genderElement
          : genderElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      birthDateElement: birthDateElement == freezed
          ? _value.birthDateElement
          : birthDateElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      deceasedBoolean: deceasedBoolean == freezed
          ? _value.deceasedBoolean
          : deceasedBoolean // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      deceasedBooleanElement: deceasedBooleanElement == freezed
          ? _value.deceasedBooleanElement
          : deceasedBooleanElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      deceasedDateTime: deceasedDateTime == freezed
          ? _value.deceasedDateTime
          : deceasedDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      deceasedDateTimeElement: deceasedDateTimeElement == freezed
          ? _value.deceasedDateTimeElement
          : deceasedDateTimeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      address: address == freezed
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      maritalStatus: maritalStatus == freezed
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      multipleBirthBoolean: multipleBirthBoolean == freezed
          ? _value.multipleBirthBoolean
          : multipleBirthBoolean // ignore: cast_nullable_to_non_nullable
              as Boolean?,
      multipleBirthBooleanElement: multipleBirthBooleanElement == freezed
          ? _value.multipleBirthBooleanElement
          : multipleBirthBooleanElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      multipleBirthInteger: multipleBirthInteger == freezed
          ? _value.multipleBirthInteger
          : multipleBirthInteger // ignore: cast_nullable_to_non_nullable
              as Integer?,
      multipleBirthIntegerElement: multipleBirthIntegerElement == freezed
          ? _value.multipleBirthIntegerElement
          : multipleBirthIntegerElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      photo: photo == freezed
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      contact: contact == freezed
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<PatientContact>?,
      communication: communication == freezed
          ? _value._communication
          : communication // ignore: cast_nullable_to_non_nullable
              as List<PatientCommunication>?,
      generalPractitioner: generalPractitioner == freezed
          ? _value._generalPractitioner
          : generalPractitioner // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      managingOrganization: managingOrganization == freezed
          ? _value.managingOrganization
          : managingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      link: link == freezed
          ? _value._link
          : link // ignore: cast_nullable_to_non_nullable
              as List<PatientLink>?,
      ethnicity: ethnicity == freezed
          ? _value.ethnicity
          : ethnicity // ignore: cast_nullable_to_non_nullable
              as RUsCoreEthnicity?,
      race: race == freezed
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as RUsCoreRace?,
      deceased: deceased == freezed
          ? _value.deceased
          : deceased // ignore: cast_nullable_to_non_nullable
              as RDeceased?,
      birthSex: birthSex == freezed
          ? _value.birthSex
          : birthSex // ignore: cast_nullable_to_non_nullable
              as String?,
      multipleBirth: multipleBirth == freezed
          ? _value.multipleBirth
          : multipleBirth // ignore: cast_nullable_to_non_nullable
              as RMultipleBirth?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RPatient extends _RPatient {
  _$_RPatient(
      {@JsonKey(unknownEnumValue: R5ResourceType.Patient)
          this.resourceType = R5ResourceType.Patient,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules')
          this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language')
          this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension')
          final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.active,
      @JsonKey(name: '_active')
          this.activeElement,
      final List<HumanName>? name,
      final List<ContactPoint>? telecom,
      @JsonKey(unknownEnumValue: PatientGender.other)
          this.gender,
      @JsonKey(name: '_gender')
          this.genderElement,
      this.birthDate,
      @JsonKey(name: '_birthDate')
          this.birthDateElement,
      this.deceasedBoolean,
      @JsonKey(name: '_deceasedBoolean')
          this.deceasedBooleanElement,
      this.deceasedDateTime,
      @JsonKey(name: '_deceasedDateTime')
          this.deceasedDateTimeElement,
      final List<Address>? address,
      this.maritalStatus,
      this.multipleBirthBoolean,
      @JsonKey(name: '_multipleBirthBoolean')
          this.multipleBirthBooleanElement,
      this.multipleBirthInteger,
      @JsonKey(name: '_multipleBirthInteger')
          this.multipleBirthIntegerElement,
      final List<Attachment>? photo,
      final List<PatientContact>? contact,
      final List<PatientCommunication>? communication,
      final List<Reference>? generalPractitioner,
      this.managingOrganization,
      final List<PatientLink>? link,
      this.ethnicity,
      this.race,
      this.deceased,
      @JsonKey(name: 'birthsex')
          this.birthSex,
      this.multipleBirth})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _name = name,
        _telecom = telecom,
        _address = address,
        _photo = photo,
        _contact = contact,
        _communication = communication,
        _generalPractitioner = generalPractitioner,
        _link = link,
        super._();

  factory _$_RPatient.fromJson(Map<String, dynamic> json) =>
      _$$_RPatientFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R5ResourceType.Patient)
  final R5ResourceType resourceType;
  @override
  final Id? id;
  @override
  final Meta? meta;
  @override
  final FhirUri? implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  final Element? implicitRulesElement;
  @override
  final Code? language;
  @override
  @JsonKey(name: '_language')
  final Element? languageElement;
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
  final Boolean? active;
  @override
  @JsonKey(name: '_active')
  final Element? activeElement;
  final List<HumanName>? _name;
  @override
  List<HumanName>? get name {
    final value = _name;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContactPoint>? _telecom;
  @override
  List<ContactPoint>? get telecom {
    final value = _telecom;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(unknownEnumValue: PatientGender.other)
  final PatientGender? gender;
  @override
  @JsonKey(name: '_gender')
  final Element? genderElement;
  @override
  final Date? birthDate;
  @override
  @JsonKey(name: '_birthDate')
  final Element? birthDateElement;
  @override
  final Boolean? deceasedBoolean;
  @override
  @JsonKey(name: '_deceasedBoolean')
  final Element? deceasedBooleanElement;
  @override
  final FhirDateTime? deceasedDateTime;
  @override
  @JsonKey(name: '_deceasedDateTime')
  final Element? deceasedDateTimeElement;
  final List<Address>? _address;
  @override
  List<Address>? get address {
    final value = _address;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept? maritalStatus;
  @override
  final Boolean? multipleBirthBoolean;
  @override
  @JsonKey(name: '_multipleBirthBoolean')
  final Element? multipleBirthBooleanElement;
  @override
  final Integer? multipleBirthInteger;
  @override
  @JsonKey(name: '_multipleBirthInteger')
  final Element? multipleBirthIntegerElement;
  final List<Attachment>? _photo;
  @override
  List<Attachment>? get photo {
    final value = _photo;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PatientContact>? _contact;
  @override
  List<PatientContact>? get contact {
    final value = _contact;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PatientCommunication>? _communication;
  @override
  List<PatientCommunication>? get communication {
    final value = _communication;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _generalPractitioner;
  @override
  List<Reference>? get generalPractitioner {
    final value = _generalPractitioner;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Reference? managingOrganization;
  final List<PatientLink>? _link;
  @override
  List<PatientLink>? get link {
    final value = _link;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RUsCoreEthnicity? ethnicity;
  @override
  final RUsCoreRace? race;
  @override
  final RDeceased? deceased;
  @override
  @JsonKey(name: 'birthsex')
  final String? birthSex;
  @override
  final RMultipleBirth? multipleBirth;

  @override
  String toString() {
    return 'RPatient(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, active: $active, activeElement: $activeElement, name: $name, telecom: $telecom, gender: $gender, genderElement: $genderElement, birthDate: $birthDate, birthDateElement: $birthDateElement, deceasedBoolean: $deceasedBoolean, deceasedBooleanElement: $deceasedBooleanElement, deceasedDateTime: $deceasedDateTime, deceasedDateTimeElement: $deceasedDateTimeElement, address: $address, maritalStatus: $maritalStatus, multipleBirthBoolean: $multipleBirthBoolean, multipleBirthBooleanElement: $multipleBirthBooleanElement, multipleBirthInteger: $multipleBirthInteger, multipleBirthIntegerElement: $multipleBirthIntegerElement, photo: $photo, contact: $contact, communication: $communication, generalPractitioner: $generalPractitioner, managingOrganization: $managingOrganization, link: $link, ethnicity: $ethnicity, race: $race, deceased: $deceased, birthSex: $birthSex, multipleBirth: $multipleBirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RPatient &&
            const DeepCollectionEquality()
                .equals(other.resourceType, resourceType) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality()
                .equals(other.implicitRules, implicitRules) &&
            const DeepCollectionEquality()
                .equals(other.implicitRulesElement, implicitRulesElement) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.languageElement, languageElement) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality()
                .equals(other.activeElement, activeElement) &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            const DeepCollectionEquality().equals(other._telecom, _telecom) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.genderElement, genderElement) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate) &&
            const DeepCollectionEquality()
                .equals(other.birthDateElement, birthDateElement) &&
            const DeepCollectionEquality()
                .equals(other.deceasedBoolean, deceasedBoolean) &&
            const DeepCollectionEquality()
                .equals(other.deceasedBooleanElement, deceasedBooleanElement) &&
            const DeepCollectionEquality()
                .equals(other.deceasedDateTime, deceasedDateTime) &&
            const DeepCollectionEquality().equals(
                other.deceasedDateTimeElement, deceasedDateTimeElement) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            const DeepCollectionEquality()
                .equals(other.maritalStatus, maritalStatus) &&
            const DeepCollectionEquality()
                .equals(other.multipleBirthBoolean, multipleBirthBoolean) &&
            const DeepCollectionEquality().equals(
                other.multipleBirthBooleanElement,
                multipleBirthBooleanElement) &&
            const DeepCollectionEquality()
                .equals(other.multipleBirthInteger, multipleBirthInteger) &&
            const DeepCollectionEquality().equals(
                other.multipleBirthIntegerElement,
                multipleBirthIntegerElement) &&
            const DeepCollectionEquality().equals(other._photo, _photo) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            const DeepCollectionEquality()
                .equals(other._communication, _communication) &&
            const DeepCollectionEquality()
                .equals(other._generalPractitioner, _generalPractitioner) &&
            const DeepCollectionEquality()
                .equals(other.managingOrganization, managingOrganization) &&
            const DeepCollectionEquality().equals(other._link, _link) &&
            const DeepCollectionEquality().equals(other.ethnicity, ethnicity) &&
            const DeepCollectionEquality().equals(other.race, race) &&
            const DeepCollectionEquality().equals(other.deceased, deceased) &&
            const DeepCollectionEquality().equals(other.birthSex, birthSex) &&
            const DeepCollectionEquality()
                .equals(other.multipleBirth, multipleBirth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(resourceType),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(meta),
        const DeepCollectionEquality().hash(implicitRules),
        const DeepCollectionEquality().hash(implicitRulesElement),
        const DeepCollectionEquality().hash(language),
        const DeepCollectionEquality().hash(languageElement),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        const DeepCollectionEquality().hash(active),
        const DeepCollectionEquality().hash(activeElement),
        const DeepCollectionEquality().hash(_name),
        const DeepCollectionEquality().hash(_telecom),
        const DeepCollectionEquality().hash(gender),
        const DeepCollectionEquality().hash(genderElement),
        const DeepCollectionEquality().hash(birthDate),
        const DeepCollectionEquality().hash(birthDateElement),
        const DeepCollectionEquality().hash(deceasedBoolean),
        const DeepCollectionEquality().hash(deceasedBooleanElement),
        const DeepCollectionEquality().hash(deceasedDateTime),
        const DeepCollectionEquality().hash(deceasedDateTimeElement),
        const DeepCollectionEquality().hash(_address),
        const DeepCollectionEquality().hash(maritalStatus),
        const DeepCollectionEquality().hash(multipleBirthBoolean),
        const DeepCollectionEquality().hash(multipleBirthBooleanElement),
        const DeepCollectionEquality().hash(multipleBirthInteger),
        const DeepCollectionEquality().hash(multipleBirthIntegerElement),
        const DeepCollectionEquality().hash(_photo),
        const DeepCollectionEquality().hash(_contact),
        const DeepCollectionEquality().hash(_communication),
        const DeepCollectionEquality().hash(_generalPractitioner),
        const DeepCollectionEquality().hash(managingOrganization),
        const DeepCollectionEquality().hash(_link),
        const DeepCollectionEquality().hash(ethnicity),
        const DeepCollectionEquality().hash(race),
        const DeepCollectionEquality().hash(deceased),
        const DeepCollectionEquality().hash(birthSex),
        const DeepCollectionEquality().hash(multipleBirth)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_RPatientCopyWith<_$_RPatient> get copyWith =>
      __$$_RPatientCopyWithImpl<_$_RPatient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RPatientToJson(this);
  }
}

abstract class _RPatient extends RPatient {
  factory _RPatient(
      {@JsonKey(unknownEnumValue: R5ResourceType.Patient)
          final R5ResourceType resourceType,
      final Id? id,
      final Meta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
          final Element? implicitRulesElement,
      final Code? language,
      @JsonKey(name: '_language')
          final Element? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension')
          final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final Boolean? active,
      @JsonKey(name: '_active')
          final Element? activeElement,
      final List<HumanName>? name,
      final List<ContactPoint>? telecom,
      @JsonKey(unknownEnumValue: PatientGender.other)
          final PatientGender? gender,
      @JsonKey(name: '_gender')
          final Element? genderElement,
      final Date? birthDate,
      @JsonKey(name: '_birthDate')
          final Element? birthDateElement,
      final Boolean? deceasedBoolean,
      @JsonKey(name: '_deceasedBoolean')
          final Element? deceasedBooleanElement,
      final FhirDateTime? deceasedDateTime,
      @JsonKey(name: '_deceasedDateTime')
          final Element? deceasedDateTimeElement,
      final List<Address>? address,
      final CodeableConcept? maritalStatus,
      final Boolean? multipleBirthBoolean,
      @JsonKey(name: '_multipleBirthBoolean')
          final Element? multipleBirthBooleanElement,
      final Integer? multipleBirthInteger,
      @JsonKey(name: '_multipleBirthInteger')
          final Element? multipleBirthIntegerElement,
      final List<Attachment>? photo,
      final List<PatientContact>? contact,
      final List<PatientCommunication>? communication,
      final List<Reference>? generalPractitioner,
      final Reference? managingOrganization,
      final List<PatientLink>? link,
      final RUsCoreEthnicity? ethnicity,
      final RUsCoreRace? race,
      final RDeceased? deceased,
      @JsonKey(name: 'birthsex')
          final String? birthSex,
      final RMultipleBirth? multipleBirth}) = _$_RPatient;
  _RPatient._() : super._();

  factory _RPatient.fromJson(Map<String, dynamic> json) = _$_RPatient.fromJson;

  @override
  @JsonKey(unknownEnumValue: R5ResourceType.Patient)
  R5ResourceType get resourceType => throw _privateConstructorUsedError;
  @override
  Id? get id => throw _privateConstructorUsedError;
  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  FhirUri? get implicitRules => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement => throw _privateConstructorUsedError;
  @override
  Code? get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_language')
  Element? get languageElement => throw _privateConstructorUsedError;
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
  Boolean? get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_active')
  Element? get activeElement => throw _privateConstructorUsedError;
  @override
  List<HumanName>? get name => throw _privateConstructorUsedError;
  @override
  List<ContactPoint>? get telecom => throw _privateConstructorUsedError;
  @override
  @JsonKey(unknownEnumValue: PatientGender.other)
  PatientGender? get gender => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_gender')
  Element? get genderElement => throw _privateConstructorUsedError;
  @override
  Date? get birthDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_birthDate')
  Element? get birthDateElement => throw _privateConstructorUsedError;
  @override
  Boolean? get deceasedBoolean => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_deceasedBoolean')
  Element? get deceasedBooleanElement => throw _privateConstructorUsedError;
  @override
  FhirDateTime? get deceasedDateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_deceasedDateTime')
  Element? get deceasedDateTimeElement => throw _privateConstructorUsedError;
  @override
  List<Address>? get address => throw _privateConstructorUsedError;
  @override
  CodeableConcept? get maritalStatus => throw _privateConstructorUsedError;
  @override
  Boolean? get multipleBirthBoolean => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_multipleBirthBoolean')
  Element? get multipleBirthBooleanElement =>
      throw _privateConstructorUsedError;
  @override
  Integer? get multipleBirthInteger => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_multipleBirthInteger')
  Element? get multipleBirthIntegerElement =>
      throw _privateConstructorUsedError;
  @override
  List<Attachment>? get photo => throw _privateConstructorUsedError;
  @override
  List<PatientContact>? get contact => throw _privateConstructorUsedError;
  @override
  List<PatientCommunication>? get communication =>
      throw _privateConstructorUsedError;
  @override
  List<Reference>? get generalPractitioner =>
      throw _privateConstructorUsedError;
  @override
  Reference? get managingOrganization => throw _privateConstructorUsedError;
  @override
  List<PatientLink>? get link => throw _privateConstructorUsedError;
  @override
  RUsCoreEthnicity? get ethnicity => throw _privateConstructorUsedError;
  @override
  RUsCoreRace? get race => throw _privateConstructorUsedError;
  @override
  RDeceased? get deceased => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'birthsex')
  String? get birthSex => throw _privateConstructorUsedError;
  @override
  RMultipleBirth? get multipleBirth => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RPatientCopyWith<_$_RPatient> get copyWith =>
      throw _privateConstructorUsedError;
}

RUsCoreEthnicity _$RUsCoreEthnicityFromJson(Map<String, dynamic> json) {
  return _RUsCoreEthinicity.fromJson(json);
}

/// @nodoc
mixin _$RUsCoreEthnicity {
  Coding? get ombCategory => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<Code>? get detailed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RUsCoreEthnicityCopyWith<RUsCoreEthnicity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RUsCoreEthnicityCopyWith<$Res> {
  factory $RUsCoreEthnicityCopyWith(
          RUsCoreEthnicity value, $Res Function(RUsCoreEthnicity) then) =
      _$RUsCoreEthnicityCopyWithImpl<$Res>;
  $Res call({Coding? ombCategory, String text, List<Code>? detailed});

  $CodingCopyWith<$Res>? get ombCategory;
}

/// @nodoc
class _$RUsCoreEthnicityCopyWithImpl<$Res>
    implements $RUsCoreEthnicityCopyWith<$Res> {
  _$RUsCoreEthnicityCopyWithImpl(this._value, this._then);

  final RUsCoreEthnicity _value;
  // ignore: unused_field
  final $Res Function(RUsCoreEthnicity) _then;

  @override
  $Res call({
    Object? ombCategory = freezed,
    Object? text = freezed,
    Object? detailed = freezed,
  }) {
    return _then(_value.copyWith(
      ombCategory: ombCategory == freezed
          ? _value.ombCategory
          : ombCategory // ignore: cast_nullable_to_non_nullable
              as Coding?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      detailed: detailed == freezed
          ? _value.detailed
          : detailed // ignore: cast_nullable_to_non_nullable
              as List<Code>?,
    ));
  }

  @override
  $CodingCopyWith<$Res>? get ombCategory {
    if (_value.ombCategory == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.ombCategory!, (value) {
      return _then(_value.copyWith(ombCategory: value));
    });
  }
}

/// @nodoc
abstract class _$$_RUsCoreEthinicityCopyWith<$Res>
    implements $RUsCoreEthnicityCopyWith<$Res> {
  factory _$$_RUsCoreEthinicityCopyWith(_$_RUsCoreEthinicity value,
          $Res Function(_$_RUsCoreEthinicity) then) =
      __$$_RUsCoreEthinicityCopyWithImpl<$Res>;
  @override
  $Res call({Coding? ombCategory, String text, List<Code>? detailed});

  @override
  $CodingCopyWith<$Res>? get ombCategory;
}

/// @nodoc
class __$$_RUsCoreEthinicityCopyWithImpl<$Res>
    extends _$RUsCoreEthnicityCopyWithImpl<$Res>
    implements _$$_RUsCoreEthinicityCopyWith<$Res> {
  __$$_RUsCoreEthinicityCopyWithImpl(
      _$_RUsCoreEthinicity _value, $Res Function(_$_RUsCoreEthinicity) _then)
      : super(_value, (v) => _then(v as _$_RUsCoreEthinicity));

  @override
  _$_RUsCoreEthinicity get _value => super._value as _$_RUsCoreEthinicity;

  @override
  $Res call({
    Object? ombCategory = freezed,
    Object? text = freezed,
    Object? detailed = freezed,
  }) {
    return _then(_$_RUsCoreEthinicity(
      ombCategory: ombCategory == freezed
          ? _value.ombCategory
          : ombCategory // ignore: cast_nullable_to_non_nullable
              as Coding?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      detailed: detailed == freezed
          ? _value._detailed
          : detailed // ignore: cast_nullable_to_non_nullable
              as List<Code>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RUsCoreEthinicity extends _RUsCoreEthinicity {
  _$_RUsCoreEthinicity(
      {this.ombCategory, required this.text, final List<Code>? detailed})
      : _detailed = detailed,
        super._();

  factory _$_RUsCoreEthinicity.fromJson(Map<String, dynamic> json) =>
      _$$_RUsCoreEthinicityFromJson(json);

  @override
  final Coding? ombCategory;
  @override
  final String text;
  final List<Code>? _detailed;
  @override
  List<Code>? get detailed {
    final value = _detailed;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RUsCoreEthnicity(ombCategory: $ombCategory, text: $text, detailed: $detailed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RUsCoreEthinicity &&
            const DeepCollectionEquality()
                .equals(other.ombCategory, ombCategory) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other._detailed, _detailed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ombCategory),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(_detailed));

  @JsonKey(ignore: true)
  @override
  _$$_RUsCoreEthinicityCopyWith<_$_RUsCoreEthinicity> get copyWith =>
      __$$_RUsCoreEthinicityCopyWithImpl<_$_RUsCoreEthinicity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RUsCoreEthinicityToJson(this);
  }
}

abstract class _RUsCoreEthinicity extends RUsCoreEthnicity {
  factory _RUsCoreEthinicity(
      {final Coding? ombCategory,
      required final String text,
      final List<Code>? detailed}) = _$_RUsCoreEthinicity;
  _RUsCoreEthinicity._() : super._();

  factory _RUsCoreEthinicity.fromJson(Map<String, dynamic> json) =
      _$_RUsCoreEthinicity.fromJson;

  @override
  Coding? get ombCategory => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  List<Code>? get detailed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RUsCoreEthinicityCopyWith<_$_RUsCoreEthinicity> get copyWith =>
      throw _privateConstructorUsedError;
}

RUsCoreRace _$RUsCoreRaceFromJson(Map<String, dynamic> json) {
  return _RUsCoreRace.fromJson(json);
}

/// @nodoc
mixin _$RUsCoreRace {
  List<Coding>? get ombCategory => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<Coding>? get detailed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RUsCoreRaceCopyWith<RUsCoreRace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RUsCoreRaceCopyWith<$Res> {
  factory $RUsCoreRaceCopyWith(
          RUsCoreRace value, $Res Function(RUsCoreRace) then) =
      _$RUsCoreRaceCopyWithImpl<$Res>;
  $Res call({List<Coding>? ombCategory, String text, List<Coding>? detailed});
}

/// @nodoc
class _$RUsCoreRaceCopyWithImpl<$Res> implements $RUsCoreRaceCopyWith<$Res> {
  _$RUsCoreRaceCopyWithImpl(this._value, this._then);

  final RUsCoreRace _value;
  // ignore: unused_field
  final $Res Function(RUsCoreRace) _then;

  @override
  $Res call({
    Object? ombCategory = freezed,
    Object? text = freezed,
    Object? detailed = freezed,
  }) {
    return _then(_value.copyWith(
      ombCategory: ombCategory == freezed
          ? _value.ombCategory
          : ombCategory // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      detailed: detailed == freezed
          ? _value.detailed
          : detailed // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
    ));
  }
}

/// @nodoc
abstract class _$$_RUsCoreRaceCopyWith<$Res>
    implements $RUsCoreRaceCopyWith<$Res> {
  factory _$$_RUsCoreRaceCopyWith(
          _$_RUsCoreRace value, $Res Function(_$_RUsCoreRace) then) =
      __$$_RUsCoreRaceCopyWithImpl<$Res>;
  @override
  $Res call({List<Coding>? ombCategory, String text, List<Coding>? detailed});
}

/// @nodoc
class __$$_RUsCoreRaceCopyWithImpl<$Res> extends _$RUsCoreRaceCopyWithImpl<$Res>
    implements _$$_RUsCoreRaceCopyWith<$Res> {
  __$$_RUsCoreRaceCopyWithImpl(
      _$_RUsCoreRace _value, $Res Function(_$_RUsCoreRace) _then)
      : super(_value, (v) => _then(v as _$_RUsCoreRace));

  @override
  _$_RUsCoreRace get _value => super._value as _$_RUsCoreRace;

  @override
  $Res call({
    Object? ombCategory = freezed,
    Object? text = freezed,
    Object? detailed = freezed,
  }) {
    return _then(_$_RUsCoreRace(
      ombCategory: ombCategory == freezed
          ? _value._ombCategory
          : ombCategory // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      detailed: detailed == freezed
          ? _value._detailed
          : detailed // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RUsCoreRace extends _RUsCoreRace {
  _$_RUsCoreRace(
      {final List<Coding>? ombCategory,
      required this.text,
      final List<Coding>? detailed})
      : _ombCategory = ombCategory,
        _detailed = detailed,
        super._();

  factory _$_RUsCoreRace.fromJson(Map<String, dynamic> json) =>
      _$$_RUsCoreRaceFromJson(json);

  final List<Coding>? _ombCategory;
  @override
  List<Coding>? get ombCategory {
    final value = _ombCategory;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String text;
  final List<Coding>? _detailed;
  @override
  List<Coding>? get detailed {
    final value = _detailed;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RUsCoreRace(ombCategory: $ombCategory, text: $text, detailed: $detailed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RUsCoreRace &&
            const DeepCollectionEquality()
                .equals(other._ombCategory, _ombCategory) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other._detailed, _detailed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ombCategory),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(_detailed));

  @JsonKey(ignore: true)
  @override
  _$$_RUsCoreRaceCopyWith<_$_RUsCoreRace> get copyWith =>
      __$$_RUsCoreRaceCopyWithImpl<_$_RUsCoreRace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RUsCoreRaceToJson(this);
  }
}

abstract class _RUsCoreRace extends RUsCoreRace {
  factory _RUsCoreRace(
      {final List<Coding>? ombCategory,
      required final String text,
      final List<Coding>? detailed}) = _$_RUsCoreRace;
  _RUsCoreRace._() : super._();

  factory _RUsCoreRace.fromJson(Map<String, dynamic> json) =
      _$_RUsCoreRace.fromJson;

  @override
  List<Coding>? get ombCategory => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  List<Coding>? get detailed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RUsCoreRaceCopyWith<_$_RUsCoreRace> get copyWith =>
      throw _privateConstructorUsedError;
}

RMultipleBirth _$RMultipleBirthFromJson(Map<String, dynamic> json) {
  return _RMultipleBirth.fromJson(json);
}

/// @nodoc
mixin _$RMultipleBirth {
  bool? get boolean => throw _privateConstructorUsedError;
  int? get integer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RMultipleBirthCopyWith<RMultipleBirth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RMultipleBirthCopyWith<$Res> {
  factory $RMultipleBirthCopyWith(
          RMultipleBirth value, $Res Function(RMultipleBirth) then) =
      _$RMultipleBirthCopyWithImpl<$Res>;
  $Res call({bool? boolean, int? integer});
}

/// @nodoc
class _$RMultipleBirthCopyWithImpl<$Res>
    implements $RMultipleBirthCopyWith<$Res> {
  _$RMultipleBirthCopyWithImpl(this._value, this._then);

  final RMultipleBirth _value;
  // ignore: unused_field
  final $Res Function(RMultipleBirth) _then;

  @override
  $Res call({
    Object? boolean = freezed,
    Object? integer = freezed,
  }) {
    return _then(_value.copyWith(
      boolean: boolean == freezed
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as bool?,
      integer: integer == freezed
          ? _value.integer
          : integer // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_RMultipleBirthCopyWith<$Res>
    implements $RMultipleBirthCopyWith<$Res> {
  factory _$$_RMultipleBirthCopyWith(
          _$_RMultipleBirth value, $Res Function(_$_RMultipleBirth) then) =
      __$$_RMultipleBirthCopyWithImpl<$Res>;
  @override
  $Res call({bool? boolean, int? integer});
}

/// @nodoc
class __$$_RMultipleBirthCopyWithImpl<$Res>
    extends _$RMultipleBirthCopyWithImpl<$Res>
    implements _$$_RMultipleBirthCopyWith<$Res> {
  __$$_RMultipleBirthCopyWithImpl(
      _$_RMultipleBirth _value, $Res Function(_$_RMultipleBirth) _then)
      : super(_value, (v) => _then(v as _$_RMultipleBirth));

  @override
  _$_RMultipleBirth get _value => super._value as _$_RMultipleBirth;

  @override
  $Res call({
    Object? boolean = freezed,
    Object? integer = freezed,
  }) {
    return _then(_$_RMultipleBirth(
      boolean: boolean == freezed
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as bool?,
      integer: integer == freezed
          ? _value.integer
          : integer // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RMultipleBirth extends _RMultipleBirth {
  _$_RMultipleBirth({this.boolean, this.integer}) : super._();

  factory _$_RMultipleBirth.fromJson(Map<String, dynamic> json) =>
      _$$_RMultipleBirthFromJson(json);

  @override
  final bool? boolean;
  @override
  final int? integer;

  @override
  String toString() {
    return 'RMultipleBirth(boolean: $boolean, integer: $integer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RMultipleBirth &&
            const DeepCollectionEquality().equals(other.boolean, boolean) &&
            const DeepCollectionEquality().equals(other.integer, integer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(boolean),
      const DeepCollectionEquality().hash(integer));

  @JsonKey(ignore: true)
  @override
  _$$_RMultipleBirthCopyWith<_$_RMultipleBirth> get copyWith =>
      __$$_RMultipleBirthCopyWithImpl<_$_RMultipleBirth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RMultipleBirthToJson(this);
  }
}

abstract class _RMultipleBirth extends RMultipleBirth {
  factory _RMultipleBirth({final bool? boolean, final int? integer}) =
      _$_RMultipleBirth;
  _RMultipleBirth._() : super._();

  factory _RMultipleBirth.fromJson(Map<String, dynamic> json) =
      _$_RMultipleBirth.fromJson;

  @override
  bool? get boolean => throw _privateConstructorUsedError;
  @override
  int? get integer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RMultipleBirthCopyWith<_$_RMultipleBirth> get copyWith =>
      throw _privateConstructorUsedError;
}

RDeceased _$RDeceasedFromJson(Map<String, dynamic> json) {
  return _RDeceased.fromJson(json);
}

/// @nodoc
mixin _$RDeceased {
  bool? get boolean => throw _privateConstructorUsedError;
  FhirDateTime? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RDeceasedCopyWith<RDeceased> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RDeceasedCopyWith<$Res> {
  factory $RDeceasedCopyWith(RDeceased value, $Res Function(RDeceased) then) =
      _$RDeceasedCopyWithImpl<$Res>;
  $Res call({bool? boolean, FhirDateTime? dateTime});
}

/// @nodoc
class _$RDeceasedCopyWithImpl<$Res> implements $RDeceasedCopyWith<$Res> {
  _$RDeceasedCopyWithImpl(this._value, this._then);

  final RDeceased _value;
  // ignore: unused_field
  final $Res Function(RDeceased) _then;

  @override
  $Res call({
    Object? boolean = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      boolean: boolean == freezed
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_RDeceasedCopyWith<$Res> implements $RDeceasedCopyWith<$Res> {
  factory _$$_RDeceasedCopyWith(
          _$_RDeceased value, $Res Function(_$_RDeceased) then) =
      __$$_RDeceasedCopyWithImpl<$Res>;
  @override
  $Res call({bool? boolean, FhirDateTime? dateTime});
}

/// @nodoc
class __$$_RDeceasedCopyWithImpl<$Res> extends _$RDeceasedCopyWithImpl<$Res>
    implements _$$_RDeceasedCopyWith<$Res> {
  __$$_RDeceasedCopyWithImpl(
      _$_RDeceased _value, $Res Function(_$_RDeceased) _then)
      : super(_value, (v) => _then(v as _$_RDeceased));

  @override
  _$_RDeceased get _value => super._value as _$_RDeceased;

  @override
  $Res call({
    Object? boolean = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_$_RDeceased(
      boolean: boolean == freezed
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RDeceased extends _RDeceased {
  _$_RDeceased({this.boolean, this.dateTime}) : super._();

  factory _$_RDeceased.fromJson(Map<String, dynamic> json) =>
      _$$_RDeceasedFromJson(json);

  @override
  final bool? boolean;
  @override
  final FhirDateTime? dateTime;

  @override
  String toString() {
    return 'RDeceased(boolean: $boolean, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RDeceased &&
            const DeepCollectionEquality().equals(other.boolean, boolean) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(boolean),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$$_RDeceasedCopyWith<_$_RDeceased> get copyWith =>
      __$$_RDeceasedCopyWithImpl<_$_RDeceased>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RDeceasedToJson(this);
  }
}

abstract class _RDeceased extends RDeceased {
  factory _RDeceased({final bool? boolean, final FhirDateTime? dateTime}) =
      _$_RDeceased;
  _RDeceased._() : super._();

  factory _RDeceased.fromJson(Map<String, dynamic> json) =
      _$_RDeceased.fromJson;

  @override
  bool? get boolean => throw _privateConstructorUsedError;
  @override
  FhirDateTime? get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RDeceasedCopyWith<_$_RDeceased> get copyWith =>
      throw _privateConstructorUsedError;
}
