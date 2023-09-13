import 'package:lestari_laundry/user/domain/model/data/satuan_product/product_image_piece.dart';

class SatuanDataAttributes {
  String productName;
  String productType;
  String productDescription;
  String productPrice;
  String minimumOrder;
  String createdAt;
  String updatedAt;
  String publishedAt;
  List productVariant;
  ProductImagePiece productImage;
  SatuanDataAttributes(
    this.productName,
    this.productType,
    this.productDescription,
    this.productPrice,
    this.minimumOrder,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.productVariant,
    this.productImage,
  );
}
