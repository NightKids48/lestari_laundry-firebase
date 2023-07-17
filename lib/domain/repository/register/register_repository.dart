import '../../../base/result_entity/result_entity.dart';
import '../../model/data/register/register_data.dart';
import '../../model/request/register/register_request.dart';

abstract class RegisterRepository {
  Future<ResultEntity<RegisterData>> submitRegister(RegisterRequest request);
}
