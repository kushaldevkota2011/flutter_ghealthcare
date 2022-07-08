import 'package:fhir/r5.dart';

final subscriberRelationShip = [
  "Child",
  "Parent",
  "Spouse",
  "Common",
  "Other",
  "Self",
  "Injured Party",
];

final codeableConceptFromSubscriberRelationShip = {
  'Child': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
          ),
          code: Code('child'),
          display: 'Child'),
    ],
  ),
  'Parent': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
          ),
          code: Code('parent'),
          display: 'Parent'),
    ],
  ),
  'Spouse': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
          ),
          code: Code('spouse'),
          display: 'Spouse'),
    ],
  ),
  'Common': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
          ),
          code: Code('child'),
          display: 'Child'),
    ],
  ),
  'Other': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
          ),
          code: Code('common'),
          display: 'Common'),
    ],
  ),
  // for simplicity only
  'default': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
          ),
          code: Code('self'),
          display: 'Self'),
    ],
  ),
  'Self': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
          ),
          code: Code('self'),
          display: 'Self'),
    ],
  ),
  'Injured Person': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
          ),
          code: Code('injured'),
          display: 'Injured Person'),
    ],
  ),
};
