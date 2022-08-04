import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../_classes/base_classes/view.dart';
import '../../widget/editor_view.dart';
import 'editor_page_controller.dart';
import 'editor_page_presenter.dart';
import 'editor_page_view_model.dart';

@injectable
class EditorPage extends StatelessWidget with View<EditorPageController, EditorPagePresenter, EditorPageViewModel> {
  EditorPage(EditorPageController editorPageController, EditorPagePresenter editorPagePresenter)
      : super(key: null) {
    controller = editorPageController;
    presenter = editorPagePresenter;
  }

  @override
  Widget build(context) => StreamBuilder<EditorPageViewModel>(
        stream: presenter.buildStream(),
        builder: (context, snapshot) {
          final viewModel = snapshot.data;
          if (viewModel == null) return const CircularProgressIndicator();
          return EditorView(viewModel.patchSymbols);
        },
      );
}
