part of '../../../screens.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorName.primary,
        title: "My Activity".text.size(16).make(),
      ),
      body: SafeArea(
        child: Container(
          child: Column(),
        ),
      ),
    );
  }
}
