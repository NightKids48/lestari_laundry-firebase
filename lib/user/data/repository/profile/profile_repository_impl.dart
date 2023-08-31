import 'dart:convert';
import '../../../base/result_entity/result_entity.dart';
import '../../../domain/repository/profile/profile_repository.dart';
import '../../model/profile/profile_data_response.dart';
import '../../service/remote/profile/profile_remote_services.dart';
import '../../../domain/base/authentication_headers_request.dart';
import '../../../domain/model/data/profile/profile_data.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final profileRemoteService = ProfileRemoteService();

  @override
  Future<ResultEntity<ProfileData>> fetchProfile(
      AuthenticationHeadersRequest header) async {
    try {
      final response = await profileRemoteService.fetchProfile(
        header,
      );
      print('${response.statusCode}');
      if (response.statusCode == 200) {
        var data = ProfileDataResponse.fromJson(jsonDecode(response.body))
            .toProfileData();
        return ResultSuccess<ProfileData>(data);
      } else {
        return ResultError<ProfileData>(message: response.body);
      }
    } catch (e) {
      print('error impl profile${e.toString()}');
      return ResultError(
        message: 'Terjadi masalah jaringan. Silakan coba lagi.',
      );
    }
  }
}
