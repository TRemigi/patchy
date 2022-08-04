import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:redux/redux.dart';
import 'package:user_management_module/src/configuration/redux/app_state/app_state.dart';
import 'package:user_management_module/src/view/phone/home_page/home_page_presenter.dart';

import 'phone_page_presenter_test.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<Store<AppState>>(unsupportedMembers: {#reducer})
])
main() {
  late HomePagePresenter phonePagePresenter;

  setup() {
    phonePagePresenter = HomePagePresenter(MockStore());
  }

  test('Given..., When..., Then', () {
    //Test Setup
    setup();

    //Test Execution
    final viewModel = phonePagePresenter.buildViewModel(AppState(patchSymbols: []));

    //Test Verification
    expect(true, isTrue);
  });
}