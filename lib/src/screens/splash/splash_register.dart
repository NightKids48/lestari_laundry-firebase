part of '../screens.dart';

class SplashRegister extends StatefulWidget {
  const SplashRegister({super.key});

  @override
  State<SplashRegister> createState() => _SplashRegisterState();
}

class _SplashRegisterState extends State<SplashRegister> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 1),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => RegisterScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SpinKitCircle(
              color: colorName.primary,
              size: 50,
            )
          ],
        ),
      ),
    );
  }
}
