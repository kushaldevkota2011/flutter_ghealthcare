import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raidon_fhir/src/features/new_requests/applications/cubit/cubit.dart';

import 'constraints.dart';
import 'src/core/core.dart';
import 'src/features/dashboard/ui/pages/dashboard_page.dart';
import 'src/features/home/ui/pages/home_page.dart';
import 'src/features/new_requests/ui/pages/new_request_page.dart';
import 'src/features/settings/ui/pages/setting_page.dart';

const List<Map<String, dynamic>> _menuItems = [
  {'title': 'Home', 'icon': Icons.home},
  {'title': 'New Requests', 'icon': Icons.new_label},
  {'title': 'Settings', 'icon': Icons.settings},
  {'title': 'DashBoard', 'icon': Icons.dashboard},
];

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  Widget enumToPage(MainNavigatorPage page) {
    switch (page) {
      case MainNavigatorPage.home:
        return const HomePage();
      case MainNavigatorPage.dashboard:
        return const DashboardPage();
      case MainNavigatorPage.settings:
        return const SettingPage();
      case MainNavigatorPage.newRequests:
        return const NewRequestPage();
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<ScaffoldState>();

    return BlocProvider<NewrequestnavigatorCubit>(
      create: (context) => NewrequestnavigatorCubit(),
      child: BlocBuilder<MainNavigatorCubit, MainNavigatorState>(
        builder: (context, state) {
          return Scaffold(
            key: key,
            appBar: createAppBar(context, key),
            drawer: Drawer(
              backgroundColor: kPrimaryColor,
              child: Column(
                children: const [
                  DrawerHeader(
                    child: Icon(Icons.flutter_dash),
                  ),
                  Expanded(child: HorizantalMenuItems())
                ],
              ),
            ),
            body: ResponsiveWidget(
              smallWidget: enumToPage(state.currentPage),
              defaultWidget: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: LeftSideMenu(),
                  ),
                  Expanded(
                    flex: 5,
                    child: enumToPage(state.currentPage),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class LeftSideMenu extends StatelessWidget {
  const LeftSideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: ResponsiveWidget.isMedium(context)
          ? const VerticalMenuItems()
          : const HorizantalMenuItems(),
    );
  }
}

class VerticalMenuItems extends StatelessWidget {
  const VerticalMenuItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainNavigatorCubit, MainNavigatorState>(
      builder: (context, state) {
        return ListView.separated(
            itemBuilder: (context, i) => VerticalMenu(
                  iconData: _menuItems[i]['icon'],
                  title: _menuItems[i]['title'],
                  isActive: i == state.currentPage.toInt,
                  onTap: () {
                    context
                        .read<MainNavigatorCubit>()
                        .changePage(i.toMainNavigatorPage);
                  },
                ),
            separatorBuilder: (context, i) => const SizedBox(height: 16),
            itemCount: _menuItems.length);
      },
    );
  }
}

class HorizantalMenuItems extends StatelessWidget {
  const HorizantalMenuItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainNavigatorCubit, MainNavigatorState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, i) => HorizontalMenuWidget(
            iconData: _menuItems[i]['icon'],
            title: _menuItems[i]['title'],
            isActive: state.currentPage.toInt == i,
            onTap: () {
              context
                  .read<MainNavigatorCubit>()
                  .changePage(i.toMainNavigatorPage);
            },
          ),
          itemCount: _menuItems.length,
        );
      },
    );
  }
}

AppBar createAppBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: ResponsiveWidget.isSmall(context) ||
              ResponsiveWidget.isXSmall(context)
          ? IconButton(
              tooltip: 'Open Drawer',
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu),
            )
          : IconButton(
              tooltip: 'Home',
              onPressed: () {},
              icon: const Icon(Icons.flutter_dash),
            ),
    );
