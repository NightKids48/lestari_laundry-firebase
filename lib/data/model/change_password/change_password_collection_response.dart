import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/change_password/change_password_data.dart';
import '../../../domain/model/data/change_password/change_password_data_user.dart';
import 'change_password_data_response.dart';
part 'change_password_collection_response.g.dart';

abstract class ChangePasswordCollectionResponseMapper {
  ChangePasswordData toChangePasswordData();
}

@JsonSerializable()
class ChangePasswordCollectionResponse
    implements ChangePasswordCollectionResponseMapper {
  String? jwt;
  ChangePasswordDataResponse? data;

  ChangePasswordCollectionResponse({
    this.jwt,
    this.data,
  });

  factory ChangePasswordCollectionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ChangePasswordCollectionResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChangePasswordCollectionResponseToJson(this);

  @override
  ChangePasswordData toChangePasswordData() {
    return ChangePasswordData(
      jwt ?? '',
      data?.toChangePasswordDataUser() ??
          ChangePasswordDataUser(
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
