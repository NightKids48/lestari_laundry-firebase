import 'dart:convert';
import '../../../base/result_entity/result_entity.dart';
import '../../../domain/model/data/login/login_data.dart';
import '../../../domain/model/request/login/login_request.dart';
import '../../../domain/repository/login/login_repository.dart';
import '../../model/login/login_collection_response.dart';
import '../../service/remote/login/login_remote_service.dart';

class LoginRepositoryImpl implements LoginRepository {
  final loginRemoteService = LoginRemoteService();

  @override
  Future<ResultEntity<LoginData>> submitLogin(LoginRequest request) async {
    try {
      final response = await loginRemoteService.postLogin(request);

      print("STATUS CODE: ${response.statusCode}");

      if (response.statusCode == 200) {
        print('Disini Error');
        var data = LoginCollectionResponse.fromJson(jsonDecode(response.body))
            .toLoginData();
        print('Data: ${data.jwt}');
        return ResultSuccess<LoginData>(data);
      } else {
        return ResultError(message: response.body);
      }
    } catch (e) {
      print('ERROR: ${e.toString()}');
      return ResultError(message: e.toString());
    }
  }
}
