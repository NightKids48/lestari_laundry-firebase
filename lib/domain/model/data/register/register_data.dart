// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lestari_laundry/domain/model/data/register/register_data_user.dart';

class RegisterData {
  String jwt;
  RegisterDataUser data;
  RegisterData(
    this.jwt,
    this.data,
  );
}
