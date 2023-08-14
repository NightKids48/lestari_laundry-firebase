import 'package:http/http.dart';
import '../../../../base/base_config/base_config.dart';
import '../../../../domain/base/authentication_headers_request.dart';

class KilogramRemoteService {
  Client client = Client();
  Map<String, dynamic> queryParams = {
    'populate': '*',
    'filters[productType][\$eq]': 'kilogram',
  };

  Future<Response> getAllKilogramProduct(
    AuthenticationHeadersRequest header,
  ) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN,
      BaseConfig.KILOGRAM,
      queryParams,
    );
    final urlDecode = Uri.decodeComponent(url.toString());
    print("URL : ${url.toString()}");
    print("URL DECODE : ${urlDecode.toString()}");
    print("HEADER : ${header.accesToken}");

    return client.get(
      Uri.parse(urlDecode),
      headers: header.toHeader(),
    );
  }
}
