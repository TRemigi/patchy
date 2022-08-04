import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';
import 'package:services_module/services_module.dart';

import '../redux/app_state/app_state.dart';
import '../redux/reducer.dart';

abstract class ReduxNavigation implements NavigationService {
  ReduxNavigation();

  late final store = Store<AppState>(
    reducer,
    initialState: AppState.initial(),
  );

  @override
  Future<T?> pushNamed<T extends Object>(BuildContext context, String routeName, {Object? arguments}) =>
      Navigator.pushNamed(context, routeName, arguments: arguments);
}