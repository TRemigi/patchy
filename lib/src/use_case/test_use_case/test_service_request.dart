import 'package:built_value/built_value.dart';

part 'test_service_request.g.dart';

abstract class TestServiceRequest implements Built<TestServiceRequest, TestServiceRequestBuilder>{
  TestServiceRequest._();
  factory TestServiceRequest([void Function(TestServiceRequestBuilder) builder]) = _$TestServiceRequest;
}
