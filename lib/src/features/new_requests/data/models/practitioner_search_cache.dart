import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entities/practitioner_search_result.dart';

const String practitionerSearchKey = 'PRACTITIONER_SEARCH_CACHE';

class PractitionerSearchCache {
  final SharedPreferences preferences;
  PractitionerSearchCache({required this.preferences});

  final _cache = <String, List<PractitionerSearchResult>>{};

  List<PractitionerSearchResult>? get(String term) {
    if (_cache.isEmpty) {
      final data = preferences.getString(practitionerSearchKey);
      if (data != null) {
        final decodedData = jsonDecode(data) as Map<String, dynamic>;

        for (var e in decodedData.entries) {
          List<PractitionerSearchResult> result = [];
          for (var val in e.value) {
            result.add(PractitionerSearchResult.fromJson(val));
          }
          _cache[e.key] = result;
        }
      }
    }

    return _cache[term];
  }

  Future<bool> set(String term, List<PractitionerSearchResult> result) {
    _cache[term] = result;
    return preferences.setString(practitionerSearchKey, jsonEncode(_cache));
  }

  bool contains(String term) => _cache.containsKey(term);

  Future<bool> remove(String term) {
    _cache.remove(term);
    return preferences.setString(practitionerSearchKey, jsonEncode(_cache));
  }

  Future<bool> clearCache() {
    _cache.clear();
    return preferences.remove(practitionerSearchKey);
  }
}
