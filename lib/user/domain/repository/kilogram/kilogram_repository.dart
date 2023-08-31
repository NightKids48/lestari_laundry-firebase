import '../../../base/result_entity/result_entity.dart';
import '../../base/authentication_headers_request.dart';
import '../../model/data/kilogram_product.dart/kilogram_data.dart';

abstract class KilogramRepository {
  Future<ResultEntity<List<KilogramData>>> fetchKilogram(
    AuthenticationHeadersRequest header,
  );
}
