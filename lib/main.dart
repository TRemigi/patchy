import 'package:flutter/material.dart';
import 'package:services_module/services_module.dart';

import 'src/configuration/navigation/phone/phone_navigation.dart';

void main() {
  final NavigationService navigationService = PhoneNavigation();

  runApp(MaterialApp(
      title: 'Flutter Demo',
      initialRoute: navigationService.initialRoute,
      onGenerateRoute: navigationService.onGenerateRoute));
}
