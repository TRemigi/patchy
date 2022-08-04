//This has to be a top-level function
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';

import 'app_state/app_state.dart';
import 'reducer.dart';
import 'register_module.config.dart';

@InjectableInit(initializerName: r'$initGetIt')
void configureDependencies() => $initGetIt(GetIt.instance);

@module
abstract class RegisterModule {
  @factoryMethod
  @singleton
  Store<AppState> get store => Store<AppState>(
        reducer,
        initialState: AppState.initial(),
      );
}
