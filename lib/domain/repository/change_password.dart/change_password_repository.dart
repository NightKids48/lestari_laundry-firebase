import '../../../base/result_entity/result_entity.dart';
import '../../model/data/change_password/change_password_data.dart';
import '../../model/request/change_password/change_password_request.dart';

abstract class ChangePasswordRepository {
  Future<ResultEntity<ChangePasswordData>> submitChangePassword(
    ChangePasswordRequest request,
  );
}
