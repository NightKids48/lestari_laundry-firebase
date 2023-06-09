import 'dart:convert';
import '../../../base/result_entity/result_entity.dart';
import '../../../domain/model/data/register/register_data.dart';
import '../../../domain/model/request/register/register_request.dart';
import '../../../domain/repository/register/register_repository.dart';
import '../../model/register/register_collection_response.dart';
import '../../service/remote/register/register_remote_service.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final registerRemoteService = RegisterRemoteService();

  @override
  Future<ResultEntity<RegisterData>> submitRegister(
      RegisterRequest request) async {
    try {
      final response = await registerRemoteService.postRegister(request);

      print("STATUS CODE: ${response.statusCode}");

      if (response.statusCode == 200) {
        print('Disini Error');
        var data =
            RegisterCollectionResponse.fromJson(jsonDecode(response.body))
                .toRegisterData();
        print('Data: ${data.jwt}');
        return ResultSuccess<RegisterData>(data);
      } else {
        return ResultError(message: response.body);
      }
    } catch (e) {
      print('ERROR: ${e.toString()}');
      return ResultError(message: e.toString());
    }
  }
}
