import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'layout.dart';
import 'src/core/ui/error_page.dart';
import 'src/features/dashboard/ui/pages/dashboard_page.dart';
import 'src/features/new_requests/ui/new_request_ui.dart';
import 'src/features/settings/ui/pages/setting_page.dart';

/// [home], [newRequests], [settings], [dashboard] are top level route
enum RoutePath {
  /// location '/'
  home,

  /// location '/new-requests'
  ///
  /// subloc --> demographics, practitoner, 'encounter', 'insurance'
  newRequests,

  /// location '/settings'
  settings,

  /// dashboard '/dashboard'
  dashboard
}

class RoutePathName {
  static const String homePath = '/';
  static const String home = 'home';
  static const String newRequestsPath = '/new-requests';
  static const String newRequest = 'new-request';
  static const String settingsPath = '/settings';
  static const String settings = 'settings';
  static const String dashboardPath = '/dashboard';
  static const String dashboard = 'dashboard';
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: RoutePathName.home,
      builder: (context, state) => SiteLayout(key: state.pageKey),
    ),
    GoRoute(
      path: '/new-requests/:title',
      name: RoutePathName.newRequest,
      builder: (context, state) {
        final title = state.params['title']!;
        debugPrint("title: $title");
        return NewRequestPage(key: state.pageKey);
      },
    ),
    GoRoute(
      path: '/settings',
      name: RoutePathName.settings,
      builder: (context, state) => SettingPage(key: state.pageKey),
    ),
    GoRoute(
      path: '/dashboard',
      name: RoutePathName.dashboard,
      builder: (context, state) => DashboardPage(key: state.pageKey),
    ),
  ],
  errorBuilder: (context, state) => ErrorPage(key: state.pageKey),
  urlPathStrategy: UrlPathStrategy.path,
  redirect: (state) {
    return null;
  },
);
