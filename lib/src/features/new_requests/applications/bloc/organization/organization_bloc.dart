import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';

import '../../../new_request.dart';

part 'organization_event.dart';
part 'organization_state.dart';

class OrganizationBloc extends Bloc<OrganizationEvent, OrganizationState> {
  final IOrganizationResourceRepository organizationResourceRepository;
  OrganizationBloc({required this.organizationResourceRepository})
      : super(OrganizationInitial()) {
    //! CreateOrganizationResource
    on<CreateOrganizationResource>((event, emit) async {
      emit(OrganizationResourceCreationStart());

      final failureOrOrganization = await organizationResourceRepository
          .createOrganizationProfile(organization: event.organization);

      failureOrOrganization.fold(
        (l) => emit(
          OrganizationResouresCreationFailure(errorMessage: l.message),
        ),
        (r) => emit(
          OrganizationResourceCreationSuccess(r),
        ),
      );
    });
  }
}
