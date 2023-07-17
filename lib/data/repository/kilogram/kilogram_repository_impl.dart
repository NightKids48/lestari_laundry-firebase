import 'dart:convert';
import 'package:lestari_laundry/domain/base/authentication_headers_request.dart';
import 'package:lestari_laundry/domain/model/data/kilogram_product.dart/kilogram_data.dart';
import '../../../base/result_entity/result_entity.dart';
import '../../../domain/repository/kilogram/kilogram_repository.dart';
import '../../model/kilogram_product/kilogram_collection_data_response.dart';
import '../../service/remote/kilogram_product/kilogram_remote_service.dart';

class KilogramRepositoryImpl implements KilogramRepository {
  final kilogramRemoteService = KilogramRemoteService();

  @override
  Future<ResultEntity<List<KilogramData>>> fetchKilogram(
      AuthenticationHeadersRequest header) async {
    try {
      final response =
          await kilogramRemoteService.getAllKilogramProduct(header);

      print("STATUS CODE: ${response.statusCode}");
      print("DATA: ${response.body}");

      if (response.statusCode == 200) {
        print('Disini Error');
        var data =
            KilogramCollectionDataResponse.fromJson(jsonDecode(response.body))
                    .data
                    ?.map((e) => e.toKilogramData())
                    .toList() ??
                List.empty();
        print('Data: ${data.length}');
        print(
            'Nama produk : ${data.isNotEmpty ? data[0].attributes.productName : 'data tidak ada'}');
        return ResultSuccess<List<KilogramData>>(data);
      } else {
        return ResultError<List<KilogramData>>(message: response.body);
      }
    } catch (e) {
      print('ERROR: ${e.toString()}');
      return ResultError(message: e.toString());
    }
  }
}
