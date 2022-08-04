import 'package:redux/redux.dart';

import '../../../configuration/redux/app_state/app_state.dart';

abstract class ReduxController {
  ReduxController(this._store);
  final Store<AppState> _store;
}
