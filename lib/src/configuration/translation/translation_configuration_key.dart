import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'translation_configuration_key.g.dart';

class TranslationConfigurationKey extends EnumClass {
  const TranslationConfigurationKey._(String name) : super(name);

  static const TranslationConfigurationKey saltLakeCity = _$example;

  static BuiltSet<TranslationConfigurationKey> get values => _$values;
  static TranslationConfigurationKey valueOf(String name) => _$valueOf(name);
}
