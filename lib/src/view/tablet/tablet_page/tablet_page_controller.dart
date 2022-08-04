import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';

import '../../../configuration/redux/app_state/app_state.dart';
import '../../_classes/base_classes/redux_controller.dart';

@injectable
class TabletPageController extends ReduxController {
  TabletPageController(Store<AppState> store) : super(store);
}
