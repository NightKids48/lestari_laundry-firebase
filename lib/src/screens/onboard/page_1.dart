part of '../screens.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.primary,
      bottomNavigationBar: ColoredBox(
        color: colorName.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'images/frame.png',
              height: 60,
            ).p(20),
          ],
        ),
      ),
      body: SafeArea(
        child: VStack(
          [_buildImage(context), _buildText(context)],
        ),
      ),
    );
  }

  Widget _buildImage(context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 300,
        color: colorName.background,
        child: ClipPath(
          clipper: MyClipper(),
          child: const Image(
            image: AssetImage('images/intro_1.png'),
            fit: BoxFit.cover,
          ),
        ),
      ).wFull(context),
    );
  }

  Widget _buildText(context) {
    return VStack([
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Lorem Ipsum"
              .text
              .bold
              .size(30)
              .color(colorName.white)
              .fontFamily('nunito')
              .make()
              .pOnly(top: 20)
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Dolorr"
              .text
              .bold
              .size(30)
              .color(colorName.white)
              .fontFamily('nunito')
              .make(),
        ],
      )
    ]);
  }
}
