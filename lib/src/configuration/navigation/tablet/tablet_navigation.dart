import 'package:flutter/material.dart';
import 'package:services_module/services_module.dart';

import '../../redux/register_module.dart';
import 'tablet_routes.dart';

class TabletNavigation extends NavigationService {
  TabletNavigation() : super() {
    configureDependencies();
  }

  @override
  String get initialRoute => WeatherTabletRoutes.home;

  @override
  Route<T>? onGenerateRoute<T extends Object>(RouteSettings routeSettings) {
    // if (routeSettings.name == WeatherTabletRoutes.home) {
    //   return MaterialPageRoute<T>(builder: (context) => GetIt.instance<TabletPage>());
    // }
    return null;
  }
}
