part of '../screens.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.primary,
      bottomNavigationBar: ColoredBox(
        color: colorName.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Back"
                .text
                .color(colorName.white)
                .size(16)
                .bold
                .make()
                .pOnly(left: 20, top: 20),
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
            image: AssetImage('images/intro_2.png'),
            fit: BoxFit.cover,
          ).centered(),
        ),
      ).wFull(context),
    );
  }

  Widget _buildText(context) {
    return Container(
      color: colorName.primary,
      child: VStack([
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
      ]),
    ).wFull(context).hFull(context).expand();
  }
}
