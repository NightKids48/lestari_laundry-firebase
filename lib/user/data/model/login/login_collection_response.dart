import '../../../domain/model/data/login/login_data.dart';
import '../../../domain/model/data/login/login_data_user.dart';
import 'login_data_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_collection_response.g.dart';

abstract class LoginCollectionResponseMapper {
  LoginData toLoginData();
}

@JsonSerializable()
class LoginCollectionResponse implements LoginCollectionResponseMapper {
  String? jwt;
  LoginDataResponse? data;

  LoginCollectionResponse({
    this.jwt,
    this.data,
  });

  factory LoginCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginCollectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginCollectionResponseToJson(this);

  @override
  LoginData toLoginData() {
    return LoginData(
      jwt ?? '',
      data?.toLoginDataUser() ??
          LoginDataUser(
            0,
            '',
            '',
            false,
            false,
            '',
            '',
            '',
            '',
          ),
    );
  }
}
