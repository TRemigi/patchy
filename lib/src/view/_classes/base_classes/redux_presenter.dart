import 'dart:async';

import 'package:redux/redux.dart';

import '../../../configuration/redux/app_state/app_state.dart';

abstract class ReduxPresenter<T> {
  ReduxPresenter(Store<AppState> store) : _store = store {
    _storeSubscription = _store.onChange.listen(_onStoreChange);
  }

  final Store<AppState> _store;

  StreamController<T>? _streamController;

  late final StreamSubscription<AppState> _storeSubscription;

  Stream<T> buildStream() {
    _streamController?.close();
    _streamController = StreamController<T>();
    _streamController?.onCancel = _onStreamCancel;
    _streamController?.add(_initialState());
    return _streamController?.stream ?? const Stream.empty();
  }

  T buildViewModel(AppState appState);

  T _initialState() => buildViewModel(_store.state);

  void _onStoreChange(AppState state) {
    if (_streamController?.isClosed != false) return;
    _streamController?.add(buildViewModel(state));
  }

  void _onStreamCancel() {
    _storeSubscription.cancel();
  }
}
