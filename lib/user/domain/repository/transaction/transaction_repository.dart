import '../../../base/result_entity/result_entity.dart';
import '../../base/authentication_headers_request.dart';
import '../../model/data/transaction/transaction_data.dart';

abstract class TransactionRepository {
  Future<ResultEntity<List<TransactionData>>> fetchTransaction(
    AuthenticationHeadersRequest header,
  );
}
