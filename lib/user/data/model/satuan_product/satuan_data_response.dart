import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/satuan_product/satuan_data_attribute_response.dart';
import '../../../domain/model/data/satuan_product/product_image_piece.dart';
import '../../../domain/model/data/satuan_product/product_image_piece_attributes.dart';
import '../../../domain/model/data/satuan_product/product_image_piece_data.dart';
import '../../../domain/model/data/satuan_product/satuan_data.dart';
import '../../../domain/model/data/satuan_product/satuan_data_attributes.dart';
part 'satuan_data_response.g.dart';

abstract class SatuanDataResponseMapper {
  SatuanData toSatuanData();
}

@JsonSerializable()
class SatuanDataResponse implements SatuanDataResponseMapper {
  int? id;
  SatuanDataAttributesResponse? attributes;

  SatuanDataResponse({
    this.id,
    this.attributes,
  });

  factory SatuanDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SatuanDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SatuanDataResponseToJson(this);

  @override
  SatuanData toSatuanData() {
    return SatuanData(
      id ?? 0,
      attributes?.toSatuanDataAttributes() ??
          SatuanDataAttributes(
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            [],
            ProductImagePiece(
              ProductImagePieceData(
                0,
                ProductImagePieceAttributes(
                  '',
                  '',
                  '',
                  0,
                  0,
                  '',
                  '',
                  '',
                  '',
                  0,
                  '',
                  '',
                  '',
                  '',
                  '',
                  '',
                ),
              ),
            ),
          ),
    );
  }
}
