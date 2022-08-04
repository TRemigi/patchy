import 'package:flutter/material.dart';
import 'package:user_management_module/src/configuration/navigation/redux_navigation.dart';
import 'package:user_management_module/src/service/get_patch_symbols_from_file_service.dart';
import 'package:user_management_module/src/view/phone/editor_page/editor_page.dart';
import 'package:user_management_module/src/view/phone/editor_page/editor_page_controller.dart';
import 'package:user_management_module/src/view/phone/editor_page/editor_page_presenter.dart';
import 'package:user_management_module/src/view/phone/home_page/home_page_controller.dart';

import '../../../use_case/get_patch_symbols/get_patch_symbols_use_case.dart';
import '../../../view/phone/home_page/home_page.dart';
import '../../../view/phone/home_page/home_page_presenter.dart';
import '../../redux/register_module.dart';
import 'phone_routes.dart';

class PhoneNavigation extends ReduxNavigation {
  PhoneNavigation() : super() {
    configureDependencies();
  }

  @override
  String get initialRoute => PhoneRoutes.home;

  @override
  Route<T>? onGenerateRoute<T extends Object>(RouteSettings routeSettings) {
    if (routeSettings.name == PhoneRoutes.home) {
      return MaterialPageRoute<T>(
          builder: (context) =>
              HomePage(HomePageController(store, this), HomePagePresenter(store)));
    }
    if (routeSettings.name == PhoneRoutes.editor) {
      return MaterialPageRoute<T>(
          builder: (context) => EditorPage(
              EditorPageController(
                  store,
                  GetPatchSymbolsUseCase(GetPatchSymbolsFromFileService())),
              EditorPagePresenter(store)
          )
      );
    }
    return null;
  }
}
