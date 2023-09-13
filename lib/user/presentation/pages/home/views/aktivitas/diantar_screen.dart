part of '../../../../screens.dart';

class DiantarScreen extends StatelessWidget {
  const DiantarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      body: SafeArea(
        child: VStack([
          Container(
            decoration: BoxDecoration(
              color: colorName.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: VStack([
                    "No. Order #2".text.fontFamily('nunitoexb').size(16).make(),
                    "IDR. 18.000"
                        .text
                        .fontFamily('nunitoexb')
                        .color(colorName.primary)
                        .size(16)
                        .make(),
                    "24 Juli 2023 11.37 WIB"
                        .text
                        .fontFamily('nunito')
                        .color(colorName.grey)
                        .size(12)
                        .make()
                  ]),
                ),
                Image(
                  image: AssetImage('images/diantar.png'),
                ),
              ],
            ).p(10),
          ).p(10),
          Container(
            decoration: BoxDecoration(
              color: colorName.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: VStack([
                    "No. Order #2".text.fontFamily('nunitoexb').size(16).make(),
                    "IDR. 18.000"
                        .text
                        .fontFamily('nunitoexb')
                        .color(colorName.primary)
                        .size(16)
                        .make(),
                    "24 Juli 2023 11.37 WIB"
                        .text
                        .fontFamily('nunito')
                        .color(colorName.grey)
                        .size(12)
                        .make()
                  ]),
                ),
                Image(
                  image: AssetImage('images/diantar.png'),
                ),
              ],
            ).p(10),
          ).p(10),
          Container(
            decoration: BoxDecoration(
              color: colorName.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: VStack([
                    "No. Order #2".text.fontFamily('nunitoexb').size(16).make(),
                    "IDR. 18.000"
                        .text
                        .fontFamily('nunitoexb')
                        .color(colorName.primary)
                        .size(16)
                        .make(),
                    "24 Juli 2023 11.37 WIB"
                        .text
                        .fontFamily('nunito')
                        .color(colorName.grey)
                        .size(12)
                        .make()
                  ]),
                ),
                Image(
                  image: AssetImage('images/diantar.png'),
                ),
              ],
            ).p(10),
          ).p(10)
        ]),
      ),
    );
  }
}
