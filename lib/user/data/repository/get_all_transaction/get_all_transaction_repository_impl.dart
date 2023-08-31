import 'dart:convert';

import '../../../base/result_entity/result_entity.dart';
import '../../../domain/base/authentication_headers_request.dart';
import '../../../domain/model/data/get_all_transaction/get_all_transaction_data.dart';
import '../../../domain/repository/get_all_transaction/get_all_transaction_repository.dart';
import '../../model/get_all_transaction/get_all_collection_transaction_response.dart';
import '../../service/remote/transaction_get_all/get_all_transaction_remote_service.dart';

class GetAllTransactionRepositoryImpl implements GetAllTransactionRepository {
  final getAllTransactionRemoteService = GetAllTransactionRemoteService();

  @override
  Future<ResultEntity<List<GetAllTransactionData>>> fetchgetalltransaction(
      AuthenticationHeadersRequest header) async {
    try {
      final response =
          await getAllTransactionRemoteService.getAllTransaction(header);

      print("STATUS CODE: ${response.statusCode}");
      print("DATA: ${response.body}");

      if (response.statusCode == 200) {
        print('Disini Error');
        var data = GetAllCollectionTransactionResponse.fromJson(
                    jsonDecode(response.body))
                .data
                ?.map((e) => e.toGetAllTransactionData())
                .toList() ??
            List.empty();
        print('Data: ${data.length}');

        return ResultSuccess<List<GetAllTransactionData>>(data);
      } else {
        return ResultError<List<GetAllTransactionData>>(message: response.body);
      }
    } catch (e) {
      print('ERROR: ${e.toString()}');
      return ResultError(message: e.toString());
    }
  }
}
