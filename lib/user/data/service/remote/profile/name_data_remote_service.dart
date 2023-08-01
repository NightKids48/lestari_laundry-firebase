import 'package:http/http.dart';
import '../../../../base/base_config/base_config.dart';
import '../../../../domain/base/authentication_headers_request.dart';

class NameDataRemoteService {
  Client client = Client();

  Map<String, dynamic> queryParams = {
    'populate': '*',
  };

  Future<Response> fetchNameData(AuthenticationHeadersRequest header) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN,
      BaseConfig.PROFILE,
      queryParams,
    );

    print("URL PROFILE: ${url.toString()}");

    return client.get(url, headers: header.toHeader());
  }
}
