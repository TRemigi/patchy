import 'package:injectable/injectable.dart';

import '../use_case/test_use_case/test_service.dart';
import '../use_case/test_use_case/test_service_request.dart';
import '../use_case/test_use_case/test_service_response.dart';

@Injectable(as: TestService)
class TestServiceImpl implements TestService {
  @override
  Stream<TestServiceResponse> stream(TestServiceRequest testServiceRequest) => const Stream.empty();
}
