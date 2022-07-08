import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fhir/r5.dart';
import 'package:raidon_fhir/src/features/new_requests/new_request.dart';

part 'coverage_event.dart';
part 'coverage_state.dart';

class CoverageBloc extends Bloc<CoverageEvent, CoverageState> {
  final CoverageRepository _repository;
  final ICoverageResourceRepository _resourceRepository;
  CoverageBloc(this._repository, this._resourceRepository)
      : super(CoverageInitial()) {
    //! SearchCoverageEligibility
    on<SearchCoverageEligibility>((event, emit) async {
      emit(SearchCoverageEligibilityStart());

      final failureOrData =
          await _repository.searchCoverage(event.summaryRequest);

      failureOrData.fold(
        (l) => emit(
            SearchCoverageEligibilityFailure(l.message ?? 'unknown error')),
        (r) => emit(
          SearchCoverageEligibilitySuccess(r),
        ),
      );
    });

    //! MakeCoverageProfile
    on<MakeCoverageProfile>((event, emit) async {
      emit(MakeCoverageProfileStart());
      final failureOrData =
          await _resourceRepository.makeProfile(event.coverage);

      failureOrData.fold(
        (l) => emit(MakeCoverageProfileSFailure(l.message ?? 'Unknown Error')),
        (r) => emit(
          MakeCoverageProfileSuccess(r),
        ),
      );
    });
  }
}
