import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';
import 'package:services_module/services_module.dart';
import 'package:user_management_module/module.dart';

import '../../../configuration/redux/app_state/app_state.dart';
import '../../_classes/base_classes/redux_controller.dart';

@injectable
class HomePageController extends ReduxController {
  HomePageController(Store<AppState> state, this._navigationService) : super(state);

  final NavigationService _navigationService;

  onTapCreatePatch(BuildContext context) => _navigationService.pushNamed(context, PhoneRoutes.editor);
}
