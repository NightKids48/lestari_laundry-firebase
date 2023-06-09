import 'package:lestari_laundry/domain/model/data/login/login_data.dart';
import '../../model/request/login/login_request.dart';
import 'package:lestari_laundry/base/result_entity/result_entity.dart';

abstract class LoginRepository {
  Future<ResultEntity<LoginData>> submitLogin(LoginRequest request);
}
