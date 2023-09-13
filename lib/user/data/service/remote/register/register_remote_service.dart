import 'dart:convert';
import 'package:http/http.dart';
import '../../../../base/base_config/base_config.dart';
import '../../../../domain/model/request/register/register_request.dart';

class RegisterRemoteService {
  Client client = Client();

  Future<Response> postRegister(RegisterRequest request) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN,
      BaseConfig.REGISTER,
    );

    print("URL : ${url.toString()}");
    print('REQUEST : ${jsonEncode(request.toJson())}');

    return client.post(
      url,
      body: jsonEncode(request.toJson()),
      headers: {'content-Type': 'application/json'},
    );
  }
}
