part of 'admin_screen.dart';

class AdminDijemput extends StatelessWidget {
  const AdminDijemput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: colorName.background,
            borderRadius: BorderRadius.circular(10),
          ),
          child: VStack([
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: VStack([
                    "Rizky Maulana".text.fontFamily('nunito').size(12).make(),
                    "No. Order #1".text.fontFamily('nunitoexb').size(14).make(),
                  ]),
                ),
                Container(
                  child: VStack([
                    "IDR. 18.000".text.fontFamily('nunitoexb').size(14).make(),
                    "13 March 2023"
                        .text
                        .fontFamily('nunito')
                        .size(12)
                        .color(colorName.grey)
                        .make(),
                    "11.15 WIB"
                        .text
                        .fontFamily('nunito')
                        .size(12)
                        .color(colorName.grey)
                        .make(),
                  ]),
                )
              ],
            ).p(10),
            VxDivider().pOnly(left: 10, right: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: VStack([
                    "Rizky Maulana".text.fontFamily('nunito').size(12).make(),
                    "No. Order #1".text.fontFamily('nunitoexb').size(14).make(),
                  ]),
                ),
                Container(
                  child: VStack([
                    "IDR. 18.000".text.fontFamily('nunitoexb').size(14).make(),
                    "13 March 2023"
                        .text
                        .fontFamily('nunito')
                        .size(12)
                        .color(colorName.grey)
                        .make(),
                    "11.15 WIB"
                        .text
                        .fontFamily('nunito')
                        .size(12)
                        .color(colorName.grey)
                        .make(),
                  ]),
                )
              ],
            ).p(10),
            VxDivider().pOnly(left: 10, right: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: VStack([
                    "Rizky Maulana".text.fontFamily('nunito').size(12).make(),
                    "No. Order #1".text.fontFamily('nunitoexb').size(14).make(),
                  ]),
                ),
                Container(
                  child: VStack([
                    "IDR. 18.000".text.fontFamily('nunitoexb').size(14).make(),
                    "13 March 2023"
                        .text
                        .fontFamily('nunito')
                        .size(12)
                        .color(colorName.grey)
                        .make(),
                    "11.15 WIB"
                        .text
                        .fontFamily('nunito')
                        .size(12)
                        .color(colorName.grey)
                        .make(),
                  ]),
                )
              ],
            ).p(10),
            VxDivider().pOnly(left: 10, right: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: VStack([
                    "Rizky Maulana".text.fontFamily('nunito').size(12).make(),
                    "No. Order #1".text.fontFamily('nunitoexb').size(14).make(),
                  ]),
                ),
                Container(
                  child: VStack([
                    "IDR. 18.000".text.fontFamily('nunitoexb').size(14).make(),
                    "13 March 2023"
                        .text
                        .fontFamily('nunito')
                        .size(12)
                        .color(colorName.grey)
                        .make(),
                    "11.15 WIB"
                        .text
                        .fontFamily('nunito')
                        .size(12)
                        .color(colorName.grey)
                        .make(),
                  ]),
                )
              ],
            ).p(10),
            VxDivider().pOnly(left: 10, right: 10),
            10.heightBox,
          ]),
        ).pOnly(left: 20, right: 20),
      ),
    );
  }
}
