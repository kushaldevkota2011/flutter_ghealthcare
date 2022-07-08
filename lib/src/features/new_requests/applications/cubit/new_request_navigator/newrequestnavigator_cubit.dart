import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'newrequestnavigator_state.dart';
part 'newrequestnavigator_cubit.g.dart';

class NewrequestnavigatorCubit extends HydratedCubit<NewrequestnavigatorState> {
  NewrequestnavigatorCubit() : super(const NewrequestnavigatorState());

  void changePage(NewRequestPages page) =>
      emit(NewrequestnavigatorState(currentPage: page));

  @override
  NewrequestnavigatorState? fromJson(Map<String, dynamic> json) =>
      NewrequestnavigatorState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(NewrequestnavigatorState state) =>
      state.toJson();
}
