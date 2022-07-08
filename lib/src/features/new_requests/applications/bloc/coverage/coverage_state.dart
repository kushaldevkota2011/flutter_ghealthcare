part of 'coverage_bloc.dart';

abstract class CoverageState extends Equatable {
  const CoverageState();

  @override
  List<Object> get props => [];
}

class CoverageInitial extends CoverageState {}

class SearchCoverageEligibilityStart extends CoverageState {}

class SearchCoverageEligibilitySuccess extends CoverageState {
  final EligibilitySummaryResponse eligibility;
  const SearchCoverageEligibilitySuccess(this.eligibility);
}

class SearchCoverageEligibilityFailure extends CoverageState {
  final String message;
  const SearchCoverageEligibilityFailure(this.message);
}

class MakeCoverageProfileStart extends CoverageState {}

class MakeCoverageProfileSuccess extends CoverageState {
  final Coverage coverage;
  const MakeCoverageProfileSuccess(this.coverage);
}

class MakeCoverageProfileSFailure extends CoverageState {
  final String message;
  const MakeCoverageProfileSFailure(this.message);
}
