import '../../../base/result_entity/result_entity.dart';
import '../../model/request/register/register_request.dart';

abstract class RegisterRepository {
  Future<ResultEntity> submitRegister(RegisterRequest request);
}
