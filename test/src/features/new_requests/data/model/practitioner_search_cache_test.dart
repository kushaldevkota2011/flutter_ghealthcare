import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:raidon_fhir/src/features/new_requests/data/models/practitioner_search_cache.dart';
import 'package:raidon_fhir/src/features/new_requests/domain/entities/practitioner_search_result.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'practitioner_search_cache_test.mocks.dart';

const String _practitionerSearchResultCacheTestKey = 'TESTING-KEY';
const String _testingSearchTerm = 'TESTING';

@GenerateMocks([SharedPreferences])
void main() {
  late MockSharedPreferences mockPreferences;

  late PractitionerSearchResult searchResult;
  late PractitionerSearchCache cache;

  setUp(() {
    searchResult = const PractitionerSearchResult(
      addresses: [
        PractitionerSearchResultAddress(
          address1: 'testing address',
          address2: 'testing address2',
          city: 'testing',
          postalCode: '1234567890',
          countryCode: 'UK',
          state: 'Manassas',
          telephoneNumber: '1234567890',
        ),
      ],
      basic: PractitionerSearchResultBasic(firstName: 'firstname'),
      createdEpoch: 12345,
      enumarationType: 'enum type',
      identifiers: [
        PractitionerSearchResultIdentifier(
            code: 'code', desc: 'desc', identifier: 'id', state: 'state')
      ],
      lastUpdatedEpoch: 12345,
      number: 1234,
      otherNames: ['othername'],
      taxonomies: [
        PractitionerSearchResultTaxonomy(
            code: 'code', desc: 'deac', primary: true, state: 'state')
      ],
    );

    SharedPreferences.setMockInitialValues({
      _practitionerSearchResultCacheTestKey: {
        _testingSearchTerm: [searchResult.toJson()]
      }
    });

    mockPreferences = MockSharedPreferences();

    cache = PractitionerSearchCache(preferences: mockPreferences);
  });
  group('PractitionerSearchCache :: ', () {
    test('Adding data to the cache', () async {
      when(mockPreferences.setString(any, any)).thenAnswer(
          (_) => Future.delayed(const Duration(milliseconds: 3), () => true));

      final data = await cache.set(_testingSearchTerm, [searchResult]);
      expect(data, true);
    });

    test('Reading data from cache', () {
      when(mockPreferences.getString(any)).thenAnswer((_) {
        return jsonEncode({
          _testingSearchTerm: [(searchResult.toJson())]
        });
      });

      final data = cache.get(_testingSearchTerm);

      expect(data!.first.number, searchResult.number);
    });

    test("Cheching the items is contains", () {
      final result = cache.contains(_testingSearchTerm);
      expect(result, false);
    });

    test('Clearing the cache data', () async {
      when(mockPreferences.setString(any, any)).thenAnswer(
        (_) => Future.delayed(
          const Duration(milliseconds: 300),
          () => true,
        ),
      );

      when(mockPreferences.remove(any)).thenAnswer(
        (realInvocation) => Future.delayed(
          const Duration(milliseconds: 300),
          () => true,
        ),
      );

      final result = await cache.remove(_testingSearchTerm);
      expect(result, true);
    });
  });
}
