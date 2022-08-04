import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../_classes/base_classes/view.dart';

import '../../widget/home_view.dart';
import 'home_page_controller.dart';
import 'home_page_presenter.dart';
import 'home_page_view_model.dart';

@injectable
class HomePage extends StatefulWidget with View<HomePageController, HomePagePresenter, HomePageViewModel> {
  HomePage(HomePageController homePageController, HomePagePresenter homePagePresenter)
      : super(key: null) {
    controller = homePageController;
    presenter = homePagePresenter;
  }

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(context) => StreamBuilder<HomePageViewModel>(
        stream: widget.presenter.buildStream(),
        builder: (context, snapshot) {
          final viewModel = snapshot.data;
          if (viewModel == null) return const CircularProgressIndicator();
          return HomeView(widget.controller.onTapCreatePatch);
        },
      );
}
