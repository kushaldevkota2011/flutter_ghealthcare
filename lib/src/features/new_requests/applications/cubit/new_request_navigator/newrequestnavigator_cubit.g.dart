// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newrequestnavigator_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewrequestnavigatorState _$NewrequestnavigatorStateFromJson(
        Map<String, dynamic> json) =>
    NewrequestnavigatorState(
      currentPage:
          $enumDecodeNullable(_$NewRequestPagesEnumMap, json['currentPage']) ??
              NewRequestPages.patient,
    );

Map<String, dynamic> _$NewrequestnavigatorStateToJson(
        NewrequestnavigatorState instance) =>
    <String, dynamic>{
      'currentPage': _$NewRequestPagesEnumMap[instance.currentPage],
    };

const _$NewRequestPagesEnumMap = {
  NewRequestPages.patient: 'patient',
  NewRequestPages.practitioner: 'practitioner',
  NewRequestPages.encounter: 'encounter',
  NewRequestPages.insurance: 'insurance',
};
