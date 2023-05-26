part of 'models.dart';

class Product {
  final String name;
  final double price;
  final String imageUrl;
  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
  static List<Product> products = [
    Product(
      name: 'Shrirt',
      price: 7000,
      imageUrl:
          'https://cdn.icon-icons.com/icons2/3192/PNG/512/summer_t_shirt_shirt_clothes_outfit_icon_194279.png',
    ),
    Product(
      name: 'T-Shrirt',
      price: 5000,
      imageUrl:
          'https://cdn.icon-icons.com/icons2/547/PNG/512/1455554374_line-24_icon-icons.com_53306.png',
    ),
    Product(
      name: 'Underwear',
      price: 3000,
      imageUrl:
          'https://cdn.icon-icons.com/icons2/924/PNG/512/Football_2-48_icon-icons.com_72067.png',
    ),
    Product(
      name: 'Pants',
      price: 8000,
      imageUrl: 'https://cdn.icon-icons.com/icons2/38/PNG/512/pants_4789.png',
    ),
  ];
}
