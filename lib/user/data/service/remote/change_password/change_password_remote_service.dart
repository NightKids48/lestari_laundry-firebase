import 'package:http/http.dart';
import '../../../../base/base_config/base_config.dart';
import '../../../../domain/model/request/change_password/change_password_request.dart';

class ChangePasswordRemoteService {
  Client client = Client();

  Future<Response> postChangePassword(ChangePasswordRequest request) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN,
      BaseConfig.CHANGE_PASSWORD,
    );

    print("URL : ${url.toString()}");
    print('REQUEST : ${request.toJson()}');

    return client.post(url, body: request.toJson());
  }
}
