import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'injector_container.dart';
import 'layout.dart';
import 'src/core/core.dart';
import 'src/features/new_requests/new_request.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initilization of the service locator

  await dotenv.load(fileName: 'dotenv');
  await init();

  // the router

  // running the application
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

  HydratedBlocOverrides.runZoned(
    () => runApp(const MyApp()),
    storage: storage,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MainNavigatorCubit()),
        BlocProvider(
          create: (context) => PatientBloc(
            patientResourceRepository: sl.get<PatientResourceRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => PractitionerBloc(
            sl.get<PractitionerResourceRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => OrganizationBloc(
            organizationResourceRepository:
                sl.get<OrganizationResourceRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => EncounterBloc(
            encounterResourceRepository: sl.get<EncounterResourceRepository>(),
          ),
        )
      ],
      child: MaterialApp(
        title: 'Rideons',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(),
        ),
        home: const SiteLayout(),
      ),
    );
  }
}
