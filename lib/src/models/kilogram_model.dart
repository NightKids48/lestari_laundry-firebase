part of 'models.dart';

class Kilogram {
  final String name;
  final double price;

  Kilogram({
    required this.name,
    required this.price,
  });
  static List<Kilogram> kilograms = [
    Kilogram(
      name: 'Cuci Kering',
      price: 2500,
    ),
    Kilogram(
      name: 'Setrika saja',
      price: 2500,
    ),
    Kilogram(
      name: 'Cuci Lengkap',
      price: 5000,
    ),
  ];
}
