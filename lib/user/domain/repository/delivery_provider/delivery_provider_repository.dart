import 'package:lestari_laundry/user/domain/model/data/delivery_provider/delivery_data.dart';
import '../../../base/result_entity/result_entity.dart';
import '../../base/authentication_headers_request.dart';

abstract class DeliveryProviderRepository {
  Future<ResultEntity<List<DeliveryData>>> fetchDeliveryProvider(
    AuthenticationHeadersRequest header,
  );
}
