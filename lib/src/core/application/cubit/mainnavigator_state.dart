part of 'mainnavigator_cubit.dart';

enum MainNavigatorPage {
  home,
  newRequests,
  settings,
  dashboard,
}

@JsonSerializable()
class MainNavigatorState extends Equatable {
  const MainNavigatorState({
    this.currentPage = MainNavigatorPage.home,
  });

  final MainNavigatorPage currentPage;

  @override
  List<Object> get props => [currentPage];

  factory MainNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$MainNavigatorStateFromJson(json);

  Map<String, dynamic> toJson() => _$MainNavigatorStateToJson(this);
}

extension IntX on int {
  MainNavigatorPage get toMainNavigatorPage {
    switch (this) {
      case 0:
        return MainNavigatorPage.home;
      case 1:
        return MainNavigatorPage.newRequests;
      case 2:
        return MainNavigatorPage.settings;
      case 3:
        return MainNavigatorPage.dashboard;
      default:
        return MainNavigatorPage.home;
    }
  }
}

extension MainNavigatorPageX on MainNavigatorPage {
  int get toInt {
    switch (this) {
      case MainNavigatorPage.home:
        return 0;
      case MainNavigatorPage.newRequests:
        return 1;
      case MainNavigatorPage.settings:
        return 2;
      case MainNavigatorPage.dashboard:
        return 3;
      default:
        return 0;
    }
  }
}
