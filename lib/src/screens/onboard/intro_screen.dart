part of '../screens.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.primary,
      bottomNavigationBar: VStack([
        ElevatedButton(
          onPressed: () {
            Get.off(RegisterScreen());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: colorName.background,
            padding: const EdgeInsets.all(20.0),
            shape: const StadiumBorder(),
          ),
          child: const Text(
            "Saya Baru Di Sini",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ).wFull(context).pOnly(left: 20, right: 20, bottom: 10),
        ElevatedButton(
          onPressed: () {
            Get.off(LoginScreen());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: colorName.button,
            padding: const EdgeInsets.all(20.0),
            shape: const StadiumBorder(),
          ),
          child: const Text(
            "Sudah Pernah Di Sini",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ).wFull(context).pOnly(left: 20, right: 20, bottom: 50),
      ]),
      body: Column(
        children: [
          VxBox(
            child: const Image(
              image: AssetImage('images/intro_4.png'),
            ).expand(),
          )
              .size(context.screenWidth, context.percentHeight * 50)
              .color(colorName.background)
              .bottomRounded(value: 25)
              .make(),
          100.heightBox,
        ],
      ),
    );
  }
}
