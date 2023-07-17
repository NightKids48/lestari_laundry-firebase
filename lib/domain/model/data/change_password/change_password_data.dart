import 'package:lestari_laundry/domain/model/data/change_password/change_password_data_user.dart';

class ChangePasswordData {
  String jwt;
  ChangePasswordDataUser data;
  ChangePasswordData(
    this.jwt,
    this.data,
  );
}
