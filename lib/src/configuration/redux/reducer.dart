import 'package:user_management_module/src/configuration/redux/events/update_patch_symbols.dart';

import 'app_state/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  if(action is UpdatePatchSymbols) {
    return state.copyWith(patchSymbols: action.symbols);
  } else {
    return state;
  }
}