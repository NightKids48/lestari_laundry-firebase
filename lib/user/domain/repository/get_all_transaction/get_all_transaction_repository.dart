import '../../../base/result_entity/result_entity.dart';
import '../../base/authentication_headers_request.dart';
import '../../model/data/get_all_transaction/get_all_transaction_data.dart';

abstract class GetAllTransactionRepository {
  Future<ResultEntity<List<GetAllTransactionData>>> fetchgetalltransaction(
    AuthenticationHeadersRequest header,
  );
}
