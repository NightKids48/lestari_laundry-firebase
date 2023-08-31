import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/profile/name_data.dart';

part 'name_data_response.g.dart';

abstract class NameDataresponseMapper {
  NameData toNameData();
}

@JsonSerializable()
class NameDataResponse implements NameDataresponseMapper {
  int? id;
  String? firstName;
  String? lastName;
  NameDataResponse({
    this.id,
    this.firstName,
    this.lastName,
  });

  factory NameDataResponse.fromJson(Map<String, dynamic> json) =>
      _$NameDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NameDataResponseToJson(this);

  @override
  NameData toNameData() {
    return NameData(id ?? 0, firstName ?? '', lastName ?? '');
  }
}
