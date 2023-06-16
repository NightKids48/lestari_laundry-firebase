import '../../../base/result_entity/result_entity.dart';
import '../../base/authentication_headers_request.dart';
import '../../model/data/satuan_product/satuan_data.dart';

abstract class SatuanRepository {
  Future<ResultEntity<List<SatuanData>>> fetchSatuan(
    AuthenticationHeadersRequest header,
  );
}
