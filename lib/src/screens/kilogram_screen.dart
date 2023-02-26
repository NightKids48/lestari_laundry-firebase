part of 'screens.dart';

class KilogramScreen extends StatelessWidget {
  const KilogramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      bottomNavigationBar: ColoredBox(
        color: colorName.background,
        child: VStack([
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: HStack([
              'Total items:'
                  .text
                  .fontFamily('nunito')
                  .color(colorName.black)
                  .size(14)
                  .bold
                  .make(),
              5.widthBox,
              '1'
                  .text
                  .fontFamily('nunito')
                  .color(colorName.primary)
                  .size(14)
                  .bold
                  .make(),
              210.widthBox,
              'IDR '
                  .text
                  .fontFamily('nunito')
                  .color(colorName.black)
                  .size(14)
                  .bold
                  .make(),
              '5.000'
                  .text
                  .fontFamily('nunito')
                  .color(colorName.primary)
                  .size(14)
                  .bold
                  .make()
            ]),
          ),
          ButtonWidget(
            text: 'Continue',
            onPressed: () {
              context.goNamed('order');
            },
          )
              .pOnly(left: 20, right: 20, bottom: 20, top: 5)
              .centered()
              .wFull(context),
        ]),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: colorName.background,
        title: 'Our Services'
            .text
            .fontFamily('nunito')
            .color(colorName.button)
            .size(16)
            .bold
            .makeCentered(),
        iconTheme: const IconThemeData(color: colorName.primary),
      ),
      body: SafeArea(
        child: Column(
          children: [
            25.heightBox,
            Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                color: colorName.layer,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 45,
                      width: 135,
                      decoration: BoxDecoration(
                        color: colorName.primary,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: "By Kilogram"
                          .richText
                          .color(colorName.background)
                          .size(14)
                          .fontFamily('nunito')
                          .bold
                          .makeCentered()
                          .onTap(() {})),
                  Container(
                    height: 45,
                    width: 135,
                    decoration: BoxDecoration(
                      color: colorName.layer,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: "By Pieces"
                        .richText
                        .color(colorName.silver)
                        .size(14)
                        .fontFamily('nunito')
                        .bold
                        .makeCentered()
                        .onTap(
                      () {
                        context.goNamed('satuan');
                      },
                    ),
                  ),
                ],
              ),
            ).pOnly(left: 50, right: 50),
            15.heightBox,
            // const Image(
            // image: AssetImage('images/banerkiloan.png'),
            //),
            15.heightBox,
            Row(
              children: [
                "Choose the category"
                    .richText
                    .color(colorName.black)
                    .fontFamily('nunito')
                    .size(16)
                    .bold
                    .makeCentered(),
              ],
            ).pOnly(left: 20, right: 20),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: VStack(
                  [
                    HStack([
                      const Image(
                        image: AssetImage('images/kering.png'),
                        fit: BoxFit.cover,
                        width: 50,
                      ).p(20),
                      VStack([
                        "Dry Wash "
                            .richText
                            .size(14)
                            .bold
                            .color(colorName.primary)
                            .fontFamily('nunito')
                            .make(),
                        "IDR 2.500/KG "
                            .richText
                            .size(12)
                            .fontFamily('nunito')
                            .bold
                            .make(),
                      ]),
                      70.widthBox,
                      const Icon(
                        Icons.check_box_outline_blank_outlined,
                        color: colorName.primary,
                      ).pOnly(right: 20, left: 20)
                    ]),
                    const VxDivider().pOnly(left: 20, right: 20),
                    HStack([
                      const Image(
                        image: AssetImage('images/setrika.png'),
                        fit: BoxFit.cover,
                        width: 50,
                      ).p(20),
                      VStack([
                        "Iron Only"
                            .richText
                            .size(14)
                            .color(colorName.primary)
                            .fontFamily('nunito')
                            .bold
                            .make(),
                        "IDR 2.500/KG"
                            .richText
                            .fontFamily('nunito')
                            .size(12)
                            .bold
                            .make(),
                      ]),
                      70.widthBox,
                      const Icon(
                        Icons.check_box_outline_blank_outlined,
                        color: colorName.primary,
                      ).pOnly(right: 20, left: 20)
                    ]),
                    const VxDivider().pOnly(left: 20, right: 20),
                    HStack(
                      [
                        const Image(
                          image: AssetImage('images/fullservice.png'),
                          fit: BoxFit.cover,
                          width: 50,
                        ).p(20),
                        VStack([
                          "Full Service "
                              .richText
                              .fontFamily('nunito')
                              .size(14)
                              .bold
                              .color(colorName.primary)
                              .make(),
                          "IDR 5.000/KG "
                              .richText
                              .fontFamily('nunito')
                              .size(12)
                              .bold
                              .make(),
                        ]),
                        70.widthBox,
                        const Icon(
                          Icons.check_box_outline_blank_outlined,
                          color: colorName.primary,
                        ).pOnly(right: 20, left: 20)
                      ],
                    ),
                  ],
                  crossAlignment: CrossAxisAlignment.center,
                ).box.make().color(colorName.background),
              ).p20().wFull(context),
            ),
          ],
        ),
      ).scrollVertical(),
    );
  }
}
