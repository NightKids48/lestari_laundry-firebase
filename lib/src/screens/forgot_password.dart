part of 'screens.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorName.primary,
        elevation: 0,
        title: const Text('Reset Password?'),
      ),
    );
  }
}
