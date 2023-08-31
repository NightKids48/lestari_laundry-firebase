import 'dart:convert';
import 'package:lestari_laundry/user/domain/base/authentication_headers_request.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_data.dart';
import '../../../base/result_entity/result_entity.dart';
import '../../../domain/model/request/transaction/transaction_collection_request.dart';
import '../../../domain/repository/transaction/transaction_repository.dart';
import '../../model/transaction/transaction_data_response.dart';
import '../../service/remote/transaction/transaction_remote_service.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  final transactionRemoteService = TransactionRemoteService();

  @override
  Future<ResultEntity<TransactionData>> submitTransaction(
      TransactionCollectionRequest request,
      AuthenticationHeadersRequest header) async {
    try {
      final response =
          await transactionRemoteService.postTransaction(request, header);

      print("STATUS CODE: ${response.statusCode}");
      print("ERROR=${response.body}");

      if (response.statusCode == 200) {
        print('Disini Error');
        var data = TransactionDataResponse.fromJson(jsonDecode(response.body))
            .toTransactionData();

        return ResultSuccess(data);
      } else {
        return ResultError(message: response.body);
      }
    } catch (e) {
      print('ERROR: ${e.toString()}');
      return ResultError(message: e.toString());
    }
  }
}
