import '../../../base/result_entity/result_entity.dart';
import '../../model/data/login/login_data.dart';
import '../../model/request/login/login_request.dart';

abstract class LoginRepository {
  Future<ResultEntity<LoginData>> submitLogin(LoginRequest request);
}
