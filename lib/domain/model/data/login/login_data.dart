import 'package:lestari_laundry/domain/model/data/login/login_data_user.dart';

class LoginData {
  String jwt;
  LoginDataUser data;

  LoginData(
    this.jwt,
    this.data,
  );
}
