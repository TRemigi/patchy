import '../../_classes/base_classes/view_model.dart';

class EditorPageViewModel implements ViewModel {
  EditorPageViewModel(this.patchSymbols);

  List<String?> patchSymbols = [];
}