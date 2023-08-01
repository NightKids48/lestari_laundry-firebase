import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/register/register_data_user.dart';
import 'register_data_response.dart';
import '../../../domain/model/data/register/register_data.dart';
part 'register_collection_response.g.dart';

abstract class RegisterCollectionResponseMapper {
  RegisterData toRegisterData();
}

@JsonSerializable()
class RegisterCollectionResponse implements RegisterCollectionResponseMapper {
  String? jwt;
  RegisterDataResponse? data;

  RegisterCollectionResponse({
    this.jwt,
    this.data,
  });

  factory RegisterCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterCollectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterCollectionResponseToJson(this);

  @override
  RegisterData toRegisterData() {
    return RegisterData(
      jwt ?? '',
      data?.toRegisterDataUser() ??
          RegisterDataUser(
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
