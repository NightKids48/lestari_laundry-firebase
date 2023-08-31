part of '../../screens.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.primary,
      bottomNavigationBar: VStack([
        ElevatedButton(
          onPressed: () {
            context.goNamed('location');
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
            context.goNamed('login');
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
          Image(
            image: AssetImage('images/newlogo.png'),
          ).expand(),
        ],
      ),
    );
  }
}
