import 'package:lestari_laundry/base/result_entity/result_entity.dart';
import 'package:lestari_laundry/domain/model/data/kilogram_product.dart/kilogram_data.dart';
import '../../base/authentication_headers_request.dart';

abstract class KilogramRepository {
  Future<ResultEntity<List<KilogramData>>> fetchKilogram(
    AuthenticationHeadersRequest header,
  );
}
