import 'test_service.dart';
import 'test_service_request.dart';

class TestUseCase {
  TestUseCase(TestService testService) : _testService = testService;

  final TestService _testService;

  Stream<int> stream(int i) => _testService.stream(TestServiceRequest()).map((getWeatherServiceResponse) {
        return i;
      });
}
