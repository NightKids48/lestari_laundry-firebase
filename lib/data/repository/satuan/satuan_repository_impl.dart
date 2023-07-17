import 'dart:convert';
import '../../../base/result_entity/result_entity.dart';
import '../../../domain/base/authentication_headers_request.dart';
import '../../../domain/model/data/satuan_product/satuan_data.dart';
import '../../../domain/repository/satuan/satuan_repository.dart';
import '../../model/satuan_product/satuan_collection_data_response.dart';
import '../../service/remote/satuan_product/satuan_remote_service.dart';

class SatuanRepositoryImpl implements SatuanRepository {
  final satuanRemoteService = SatuanRemoteService();

  @override
  Future<ResultEntity<List<SatuanData>>> fetchSatuan(
      AuthenticationHeadersRequest header) async {
    try {
      final response = await satuanRemoteService.getAllSatuanProduct(header);

      print("STATUS CODE: ${response.statusCode}");
      print("DATA: ${response.body}");

      if (response.statusCode == 200) {
        print('Disini Error');
        var data =
            SatuanCollectionDataResponse.fromJson(jsonDecode(response.body))
                    .data
                    ?.map((e) => e.toSatuanData())
                    .toList() ??
                List.empty();
        print('Data: ${data.length}');
        print(
            'Nama produk : ${data.isNotEmpty ? data[0].attributes.productName : 'data tidak ada'}');
        return ResultSuccess<List<SatuanData>>(data);
      } else {
        return ResultError<List<SatuanData>>(message: response.body);
      }
    } catch (e) {
      print('ERROR: ${e.toString()}');
      return ResultError(message: e.toString());
    }
  }
}
