import 'package:built_value/built_value.dart';

part 'test_service_response.g.dart';

abstract class TestServiceResponse implements Built<TestServiceResponse, TestServiceResponseBuilder> {
  TestServiceResponse._();
  factory TestServiceResponse([void Function(TestServiceResponseBuilder) builder]) = _$TestServiceResponse;
}
