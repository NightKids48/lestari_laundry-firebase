import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/data/profile/avatar_data.dart';

part "avatar_data_response.g.dart";

abstract class AvatarDataresponseMapper {
  Avatar toAvatarData();
}

@JsonSerializable()
class AvatarDataResponse implements AvatarDataresponseMapper {
  int? id;
  String? url;
  String? ext;

  AvatarDataResponse({this.id, this.url, this.ext});

  factory AvatarDataResponse.fromJson(Map<String, dynamic> json) =>
      _$AvatarDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarDataResponseToJson(this);

  @override
  Avatar toAvatarData() {
    return Avatar(id ?? 0, url ?? "", ext ?? "");
  }
}
