part of 'models.dart';

class ProductModel {
  final String? id;
  final DateTime? dateTime;
  final String? name;
  final double? price;
  final List<String>? pictures;

  ProductModel({
    this.id,
    this.dateTime,
    this.name,
    this.price,
    this.pictures,
  });

  ProductModel copyWith({
    String? id,
    DateTime? dateTime,
    String? name,
    double? price,
    List<String>? pictures,
  }) {
    return ProductModel(
      id: id ?? this.id,
      dateTime: dateTime ?? this.dateTime,
      name: name ?? this.name,
      price: price ?? this.price,
      pictures: pictures ?? this.pictures,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'dateTime': dateTime?.millisecondsSinceEpoch,
      'name': name,
      'price': price,
      'pictures': pictures,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] != null ? map['id'] as String : null,
      dateTime: map['dateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int)
          : null,
      name: map['name'] != null ? map['name'] as String : null,
      price: map['price'] != null ? map['price'] as double : null,
      pictures: map['pictures'] != null ? List.from(map['pictures']) : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
