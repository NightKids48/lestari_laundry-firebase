import 'dart:convert';
import '../../../base/result_entity/result_entity.dart';
import '../../../domain/model/data/change_password/change_password_data.dart';
import '../../../domain/model/request/change_password/change_password_request.dart';
import '../../../domain/repository/change_password.dart/change_password_repository.dart';
import '../../model/change_password/change_password_collection_response.dart';
import '../../service/remote/change_password/change_password_remote_service.dart';

class ChangePasswordRepositoryImpl implements ChangePasswordRepository {
  final changePasswordRemoteService = ChangePasswordRemoteService();

  @override
  Future<ResultEntity<ChangePasswordData>> submitChangePassword(
      ChangePasswordRequest request) async {
    try {
      final response =
          await changePasswordRemoteService.postChangePassword(request);

      print("STATUS CODE: ${response.statusCode}");

      if (response.statusCode == 200) {
        print('Disini Error');
        var data =
            ChangePasswordCollectionResponse.fromJson(jsonDecode(response.body))
                .toChangePasswordData();
        print('Data: ${data.jwt}');
        return ResultSuccess<ChangePasswordData>(data);
      } else {
        return ResultError(message: response.body);
      }
    } catch (e) {
      print('ERROR: ${e.toString()}');
      return ResultError(message: e.toString());
    }
  }
}
