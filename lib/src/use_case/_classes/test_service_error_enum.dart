import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:services_module/services_module.dart';

part 'test_service_error_enum.g.dart';

class TestServiceErrorEnum extends EnumClass implements ServiceErrorEnum {
  const TestServiceErrorEnum._(String name) : super(name);

  static const TestServiceErrorEnum yes = _$yes;

  static BuiltSet<TestServiceErrorEnum> get values => _$values;

  static Set<ServiceErrorEnum> get valuesSet => values.toSet();
  static TestServiceErrorEnum valueOf(String name) => _$valueOf(name);
}
