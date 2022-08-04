import 'package:services_module/services_module.dart';

import 'translation_configuration_key.dart';

class LocalTranslationService extends TranslationService {
  final _map = {
    TranslationConfigurationKey.saltLakeCity: 'Salt Lake City',
  };

  @override
  String get(String key, {List<String>? arguments}) => _map[key] ?? '';
}
