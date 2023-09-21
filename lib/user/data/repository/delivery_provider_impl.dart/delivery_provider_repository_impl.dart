import 'dart:convert';
import 'package:lestari_laundry/user/data/model/delivery_provider/delivery_provider_response.dart';
import 'package:lestari_laundry/user/domain/model/data/delivery_provider/delivery_data.dart';
import 'package:lestari_laundry/user/domain/repository/delivery_provider/delivery_provider_repository.dart';
import '../../../base/result_entity/result_entity.dart';
import '../../../domain/base/authentication_headers_request.dart';
import '../../service/remote/delivery_provider/delivery_provider_remote_service.dart';

class DeliveryProviderRepositoryImpl implements DeliveryProviderRepository {
  final deliveryProviderRemoteService = DeliveryProviderRemoteService();

  Future<ResultEntity<List<DeliveryData>>> fetchDeliveryData(
      AuthenticationHeadersRequest header) async {
    try {
      final response =
          await deliveryProviderRemoteService.getDeliveryProvider(header);

      print("STATUS CODE: ${response.statusCode}");
      print("DATA: ${response.body}");

      if (response.statusCode == 200) {
        var data = DeliveryProviderResponse.fromJson(jsonDecode(response.body))
                .data
                ?.map((e) => e.toDeliveryData())
                .toList() ??
            List.empty();
        print('Data: ${data.length}');
        print(
            'Nama produk : ${data.isNotEmpty ? data[0].attributes.deliveryName : 'data tidak ada'}');
        return ResultSuccess<List<DeliveryData>>(data);
      } else {
        return ResultError<List<DeliveryData>>(message: response.body);
      }
    } catch (e) {
      print('ERROR: ${e.toString()}');
      return ResultError(message: e.toString());
    }
  }

  @override
  Future<ResultEntity<List<DeliveryData>>> fetchDeliveryProvider(
      AuthenticationHeadersRequest header) {
    // TODO: implement fetchDeliveryProvider
    throw UnimplementedError();
  }
}
