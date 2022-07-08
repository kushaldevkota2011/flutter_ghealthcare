import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rfa_model/models/models.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  group("RFAModel", () {
    test("fromJson", () {
      final json = jsonDecode(fixture('rfa_model.json'));
      final rfaModel = RFAModel.fromJson(json);
      debugPrint(jsonEncode(rfaModel.toJson()));
    });

    test("toJson", () {
      final rfa = RFAModel(
        createdAt: DateTime.now(),
        employeeInfo: EmployeeInfo(
          name: 'Nemo Seawell',
          dateOfInjury: DateTime.now(),
          claimNumber: '2244',
          employer: 'testing',
          datetOfBirth: DateTime.now(),
        ),
        physicianInfo: RequestingPhysician(
          name: 'Dr Stringray Simons',
          practiceName: 'Dr',
          contactName: 'String',
          address: 'Ocean',
          city: 'ocean',
          state: 'sss',
          zipCode: '12345',
          phone: '123456789',
          npiNumber: '12345',
        ),
        claimsAdministrator: ClaimsAdministrator(
          companyName: "Underwater Corps",
          contactName: "Underwater Co",
          address: "Ocean street, Pacific",
          city: "Mermaid city",
          state: "Coral reef state",
          zipCode: "004420",
          phone: "12345890",
          faxNumber: "234567",
          email: "underwater@gmail.com",
        ),
        claimsResponse: ClaimsResponse(
          status: "approved",
          authorizationNumber: "123",
          date: DateTime.now(),
          authorizedAgentName: "Miss Sharkfina Blackwater",
          phone: "1111234567",
          faxNumber: "23456",
          email: "sharkfina@gmail.com",
          comments: "It is approved",
        ),
        requestedTreatment: [
          RequestedTreatment(
              diagnosis: "Gills not working efficiently",
              icdCode: "001",
              serviceRequested: "Breathing mask",
              cptOrHcpcsCode: "44",
              otherInformation: "None"),
          RequestedTreatment(
              diagnosis: "One fin needs support",
              icdCode: "0015",
              serviceRequested: "Fin support brace",
              cptOrHcpcsCode: "454",
              otherInformation: "None"),
        ],
        writtenConfirmationOfOralRequest: false,
      );

      final json = rfa.toJson();

      debugPrint(jsonEncode(json));
    });
  });
}
