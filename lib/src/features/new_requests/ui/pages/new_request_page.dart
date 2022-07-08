import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raidon_fhir/src/features/new_requests/ui/pages/rfa_form_page.dart';

import '../../../../../injector_container.dart';
import '../../new_request.dart';
import 'encounter_page.dart';
import 'insurance_page.dart';

const List<Widget> _pages = [
  PatientPage(),
  PractitionerPage(),
  EncounterPage(),
  InsurancePage()
];

class NewRequestPage extends StatefulWidget {
  const NewRequestPage({Key? key}) : super(key: key);

  @override
  State<NewRequestPage> createState() => _NewRequestPageState();
}

class _NewRequestPageState extends State<NewRequestPage> {
  _changeCurrentTab(int index) {
    context
        .read<NewrequestnavigatorCubit>()
        .changePage(index.toNewRequestPages);
  }

  bool isRFAForm = false;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BillingandhomeaddressCubit()),
        BlocProvider(create: (context) => OrganizationaddressCubit()),
        BlocProvider(
          create: (context) => CoverageBloc(sl.get<PVerifyCoverageRepository>(),
              sl.get<CoverageResourceRepository>()),
        )
      ],
      child: isRFAForm
          ? const RFAFormPage()
          : Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size(double.infinity, 60),
                child: BlocBuilder<NewrequestnavigatorCubit,
                    NewrequestnavigatorState>(
                  builder: (context, state) {
                    return NewRequestsAppBar(
                      changeCurrentTab: _changeCurrentTab,
                      currentTab: state.currentPage.toInt,
                    );
                  },
                ),
              ),
              body: LayoutBuilder(builder: (context, constraints) {
                return BlocBuilder<NewrequestnavigatorCubit,
                    NewrequestnavigatorState>(
                  builder: (context, state) {
                    return IndexedStack(
                      index: state.currentPage.toInt,
                      children: _pages,
                    );
                  },
                );
              }),
            ),
    );
  }
}
