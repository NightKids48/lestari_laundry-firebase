import '../../../base/result_entity/result_entity.dart';
import '../../base/authentication_headers_request.dart';
import '../../model/data/transaction/transaction_data.dart';
import '../../model/request/transaction/transaction_data_request.dart';

abstract class TransactionRepository {
  Future<ResultEntity<TransactionData>> submitTransaction(
    TransactionDataRequest request,
    AuthenticationHeadersRequest header,
  );
}
