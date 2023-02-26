part of '../../screens.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorName.primary,
        title: "My Order".text.size(16).make(),
      ),
    );
  }
}
