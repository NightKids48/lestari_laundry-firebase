import 'dart:convert';
import 'package:http/http.dart';
import 'package:lestari_laundry/user/domain/base/authentication_headers_request.dart';
import 'package:lestari_laundry/user/domain/model/request/transaction/transaction_collection_request.dart';
import '../../../../base/base_config/base_config.dart';

class TransactionRemoteService {
  Client client = Client();
  Map<String, dynamic> queryParams = {
    'populate': '*',
  };
  Future<Response> postTransaction(
    TransactionCollectionRequest request,
    AuthenticationHeadersRequest header,
  ) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN,
      BaseConfig.TRANSACTION,
      queryParams,
    );

    print("URL : ${url.toString()}");
    print('REQUEST : ${jsonEncode(request.toJson())}');

    return client.post(
      url,
      body: jsonEncode(request.toJson()),
      headers: header.toHeader(),
    );
  }
}
