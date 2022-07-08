import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mainnavigator_state.dart';
part 'mainnavigator_cubit.g.dart';

class MainNavigatorCubit extends HydratedCubit<MainNavigatorState> {
  MainNavigatorCubit() : super(const MainNavigatorState());

  void changeToHomePage() => emit(const MainNavigatorState());
  void changeToNewRequestPage() => emit(
      const MainNavigatorState(currentPage: MainNavigatorPage.newRequests));
  void changeToSettingPage() =>
      emit(const MainNavigatorState(currentPage: MainNavigatorPage.settings));
  void changeToDashboardPage() =>
      emit(const MainNavigatorState(currentPage: MainNavigatorPage.dashboard));

  void changePage(MainNavigatorPage page) =>
      emit(MainNavigatorState(currentPage: page));

  @override
  MainNavigatorState? fromJson(Map<String, dynamic> json) =>
      MainNavigatorState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(MainNavigatorState state) => state.toJson();
}
