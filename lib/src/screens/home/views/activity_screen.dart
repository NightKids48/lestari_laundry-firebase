part of '../../screens.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorName.primary,
        title: "My Activity".text.size(16).make(),
      ),
    );
  }
}
