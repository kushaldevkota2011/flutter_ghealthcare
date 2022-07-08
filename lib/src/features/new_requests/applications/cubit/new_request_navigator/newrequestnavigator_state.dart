part of 'newrequestnavigator_cubit.dart';

enum NewRequestPages { patient, practitioner, encounter, insurance }

@JsonSerializable()
class NewrequestnavigatorState extends Equatable {
  const NewrequestnavigatorState({this.currentPage = NewRequestPages.patient});

  final NewRequestPages currentPage;

  @override
  List<Object> get props => [currentPage];

  factory NewrequestnavigatorState.fromJson(Map<String, dynamic> json) =>
      _$NewrequestnavigatorStateFromJson(json);

  Map<String, dynamic> toJson() => _$NewrequestnavigatorStateToJson(this);
}

extension IntX on int {
  NewRequestPages get toNewRequestPages {
    switch (this) {
      case 0:
        return NewRequestPages.patient;
      case 1:
        return NewRequestPages.practitioner;
      case 2:
        return NewRequestPages.encounter;
      case 3:
        return NewRequestPages.insurance;
      default:
        return NewRequestPages.patient;
    }
  }
}

extension NewRequestPagesX on NewRequestPages {
  int get toInt {
    switch (this) {
      case NewRequestPages.patient:
        return 0;
      case NewRequestPages.practitioner:
        return 1;
      case NewRequestPages.encounter:
        return 2;
      case NewRequestPages.insurance:
        return 3;
      default:
        return 0;
    }
  }
}
