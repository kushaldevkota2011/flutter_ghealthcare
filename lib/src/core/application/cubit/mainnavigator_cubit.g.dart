// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mainnavigator_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainNavigatorState _$MainNavigatorStateFromJson(Map<String, dynamic> json) =>
    MainNavigatorState(
      currentPage: $enumDecodeNullable(
              _$MainNavigatorPageEnumMap, json['currentPage']) ??
          MainNavigatorPage.home,
    );

Map<String, dynamic> _$MainNavigatorStateToJson(MainNavigatorState instance) =>
    <String, dynamic>{
      'currentPage': _$MainNavigatorPageEnumMap[instance.currentPage],
    };

const _$MainNavigatorPageEnumMap = {
  MainNavigatorPage.home: 'home',
  MainNavigatorPage.newRequests: 'newRequests',
  MainNavigatorPage.settings: 'settings',
  MainNavigatorPage.dashboard: 'dashboard',
};
