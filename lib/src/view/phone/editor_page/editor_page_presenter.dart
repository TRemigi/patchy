import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';

import '../../../configuration/redux/app_state/app_state.dart';
import '../../_classes/base_classes/redux_presenter.dart';
import 'editor_page_view_model.dart';

@injectable
class EditorPagePresenter extends ReduxPresenter<EditorPageViewModel> {
  EditorPagePresenter(Store<AppState> store) : super(store);

  @override
  EditorPageViewModel buildViewModel(AppState appState) {
    final symbols = appState.patchSymbols;
    return EditorPageViewModel(symbols);
  }
}
