import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';
import 'package:user_management_module/src/configuration/redux/events/update_patch_symbols.dart';

import '../../../configuration/redux/app_state/app_state.dart';
import '../../../use_case/get_patch_symbols/get_patch_symbols_use_case.dart';
import '../../_classes/base_classes/redux_controller.dart';
import '../../_classes/other_classes/patch_symbol.dart';

@injectable
class EditorPageController extends ReduxController {
  EditorPageController(this._store, this._getPatchSymbolsUseCase,) : super(_store) {
    _patchSymbolStreamSubscription = _getPatchSymbolsUseCase.getPatchSymbols().listen(_onPatchSymbolReceived);
  }

  StreamSubscription<PatchSymbol>? _patchSymbolStreamSubscription;
  final Store<AppState> _store;
  final GetPatchSymbolsUseCase _getPatchSymbolsUseCase;

  List<String?> _symbols = [];

  _onPatchSymbolReceived(PatchSymbol patchSymbol) {
    debugPrint(patchSymbol.assetPath);
    _symbols.add(patchSymbol.assetPath);
    _store.dispatch(UpdatePatchSymbols(_symbols));
  }

  dispose() {
    _patchSymbolStreamSubscription?.cancel();
  }
}
