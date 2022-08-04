import 'test_service_request.dart';
import 'test_service_response.dart';

abstract class TestService {
  Stream<TestServiceResponse> stream(TestServiceRequest testServiceRequest);
}
