// import 'package:flutter/material.dart';
// import '../../_classes/base_classes/view.dart';
// import '../../widget/home_view.dart';
// import 'tablet_page_controller.dart';
// import 'tablet_page_presenter.dart';
// import 'tablet_page_view_model.dart';
//
// class TabletPage extends StatelessWidget with View<TabletPageController, TabletPagePresenter, TabletPageViewModel> {
//   TabletPage(TabletPageController tabletPageController, TabletPagePresenter tabletPagePresenter, {Key? key})
//       : super(key: key) {
//     controller = tabletPageController;
//     presenter = tabletPagePresenter;
//   }
//
//   @override
//   Widget build(BuildContext context) => StreamBuilder<TabletPageViewModel>(
//         stream: presenter.buildStream(),
//         builder: (context, snapshot) {
//           final viewModel = snapshot.data;
//           if (viewModel == null) return const CircularProgressIndicator();
//           return const HomeView();
//         },
//       );
// }
