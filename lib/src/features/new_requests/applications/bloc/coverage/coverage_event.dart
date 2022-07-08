part of 'coverage_bloc.dart';

abstract class CoverageEvent extends Equatable {
  const CoverageEvent();

  @override
  List<Object> get props => [];
}

class SearchCoverageEligibility extends CoverageEvent {
  final EligibilitySummaryRequest summaryRequest;
  const SearchCoverageEligibility(this.summaryRequest);
}

class MakeCoverageProfile extends CoverageEvent {
  final Coverage coverage;
  const MakeCoverageProfile(this.coverage);
}
