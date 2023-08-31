import 'dart:convert';
import '../../../base/result_entity/result_entity.dart';
import '../../../domain/base/authentication_headers_request.dart';
import '../../../domain/model/data/profile/name_data.dart';
import '../../../domain/repository/profile/name_dat_repository.dart';
import '../../model/profile/name_data_response.dart';
import '../../service/remote/profile/name_data_remote_service.dart';

class NameDataRepositoryImpl implements NameDataRepository {
  final nameDataRemoteService = NameDataRemoteService();

  @override
  Future<ResultEntity<NameData>> fetchNameData(
      AuthenticationHeadersRequest header) async {
    try {
      final response = await nameDataRemoteService.fetchNameData(
        header,
      );
      print('error status code profile${response.statusCode}');
      if (response.statusCode == 200) {
        var data =
            NameDataResponse.fromJson(jsonDecode(response.body)).toNameData();
        return ResultSuccess<NameData>(data);
      } else {
        return ResultError<NameData>(message: response.body);
      }
    } catch (e) {
      print('error impl profile${e.toString()}');
      return ResultError(
        message: 'Terjadi masalah jaringan. Silakan coba lagi.',
      );
    }
  }
}
