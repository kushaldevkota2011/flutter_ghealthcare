import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';

import '../../../new_request.dart';

part 'practitioner_event.dart';
part 'practitioner_state.dart';

/// [practitionerPostData] holds the actual data of practitioner after creation of
/// practitioner profile
///
/// [practitioner] holds the data of searched practitioner profile from --
class PractitionerBloc extends Bloc<PractitionerEvent, PractitionerState> {
  final IPractitionerResourceRepository practitionerResourceRepository;

  PractitionerBloc(this.practitionerResourceRepository)
      : super(const PractitionerState(
            status: PractitionerStateStatus.PractitionerInitial)) {
    List<PractitionerSearchResult>? practitionerList;
    String? errorMessage;
    PractitionerSearchResult? practitioner;
    List<PractitionerSearchResult>? organizationList;
    PractitionerSearchResult? organization;
    Practitioner? practitionerPostData;

    emitState(Emitter<PractitionerState> emit, PractitionerStateStatus status) {
      emit(PractitionerState(
        status: status,
        errorMessage: errorMessage,
        organization: organization,
        organizationList: organizationList,
        practitioner: practitioner,
        practitionerList: practitionerList,
        practitionerPostData: practitionerPostData,
      ));
    }

    //! search practitioner
    on<SearchPractitonerProfile>((event, emit) async {
      emitState(emit, PractitionerStateStatus.PractitionerSearching);
      final failureOrData =
          await practitionerResourceRepository.searchPractitionerResource(
        firstName: event.firstTime,
        lastName: event.lastName,
        npi: event.number,
      );

      failureOrData.fold(
        (l) {
          errorMessage = l.message;
          emitState(emit, PractitionerStateStatus.PractitionerSearchFailed);
        },
        (r) {
          practitionerList = r;
          emitState(emit, PractitionerStateStatus.PractitionerSearchSuceess);
        },
      );
    });

    //! select practitioner
    on<SelectPractitionerProfile>((event, emit) {
      practitioner = event.practitioner;
      emitState(emit, PractitionerStateStatus.SelectPractitionerProfileSuccess);
    });

    //! search practitioner organization profile
    on<SearchPractitionerOrganizationProfile>((event, emit) async {
      emitState(
          emit, PractitionerStateStatus.PractitionerOrganizationSearching);

      final failureOrData = await practitionerResourceRepository
          .searchPractitionerResource(npi: event.npi);

      failureOrData.fold(
        (l) {
          errorMessage = l.message;
          emitState(emit,
              PractitionerStateStatus.PractitionerOrganizationSearchFailed);
        },
        (r) {
          organizationList = r;
          emitState(emit,
              PractitionerStateStatus.PractitionerOrganizationSearchSuceess);
        },
      );
    });

    //! select practitioner
    on<SelectPractitionerOrganizationProfile>((event, emit) {
      organization = event.organization;
      emitState(emit,
          PractitionerStateStatus.SelectPractitionerOrganizationProfileSuccess);
    });

    //! CreatePractitionerProfile
    on<CreatePractitionerProfile>((event, emit) async {
      emitState(emit, PractitionerStateStatus.PractitionerProfileCreationStart);

      final failureOrPractitioner = await practitionerResourceRepository
          .createPractitionerProfile(practitioner: event.practitioner);

      failureOrPractitioner.fold((l) {
        errorMessage = l.message;
        debugPrint(errorMessage);
        emitState(
            emit, PractitionerStateStatus.PractitionerProfileCreationFailure);
      }, (r) {
        practitionerPostData = r;
        emitState(
            emit, PractitionerStateStatus.PractitionerProfileCreationSuccess);
      });
    });
  }
}
