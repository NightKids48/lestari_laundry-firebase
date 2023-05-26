part of '../../screens.dart';

class SatuanScreen extends StatefulWidget {
  const SatuanScreen({super.key});

  @override
  State<SatuanScreen> createState() => _SatuanScreenState();
}

class _SatuanScreenState extends State<SatuanScreen> {
  final MyController c = Get.put(MyController());
  final OrderController o = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      bottomNavigationBar: ColoredBox(
        color: colorName.background,
        child: VStack([
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: HStack([
                  'Total Items: '
                      .text
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .size(14)
                      .bold
                      .make(),
                  Obx(
                    () => "${c.sum.toString()}"
                        .text
                        .fontFamily('nunito')
                        .color(colorName.primary)
                        .size(14)
                        .bold
                        .make(),
                  ),
                ]),
              ),
              Container(
                child: HStack([
                  'IDR '
                      .text
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .size(14)
                      .bold
                      .make(),
                  Obx(
                    () => "${c.sum.toString()}"
                        .text
                        .fontFamily('nunito')
                        .color(colorName.primary)
                        .size(14)
                        .bold
                        .make(),
                  ),
                ]),
              ),
            ],
          ).pOnly(left: 20, right: 20, top: 10),
          ButtonWidget(
            text: "Continue",
            onPressed: () {},
          ).p(20),
        ]),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: colorName.primary),
        elevation: 0,
        backgroundColor: colorName.background,
        title: "Service Kami"
            .text
            .size(18)
            .fontFamily('nunitoexb')
            .color(colorName.button)
            .bold
            .make()
            .centered(),
      ),
      body: SafeArea(
        child: Container(
          color: colorName.rightone,
          child: Column(
            children: [
              20.heightBox,
              HStack([
                Container(
                  height: 45,
                  width: 325,
                  decoration: BoxDecoration(
                    color: colorName.layer,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      10.heightBox,
                      Container(
                        height: 45,
                        width: 160,
                        decoration: BoxDecoration(
                          color: colorName.layer,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: "Kilogram"
                            .richText
                            .color(colorName.grey)
                            .size(14)
                            .fontFamily('nunito')
                            .bold
                            .makeCentered()
                            .onTap(
                          () {
                            Get.off(const KilogramScreen());
                          },
                        ),
                      ),
                      5.widthBox,
                      Container(
                        height: 45,
                        width: 160,
                        decoration: BoxDecoration(
                          color: colorName.primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: "Satuan"
                            .richText
                            .color(colorName.background)
                            .size(14)
                            .fontFamily('nunito')
                            .bold
                            .makeCentered()
                            .onTap(
                              () {},
                            ),
                      ),
                    ],
                  ),
                ).pOnly(left: 20, right: 20),
              ]),
              20.heightBox,
              HStack([
                Image(
                  image: AssetImage('images/banerkiloan.png'),
                ),
              ]),
              10.heightBox,
              Row(
                children: [
                  "Tambah Item"
                      .richText
                      .color(colorName.button)
                      .fontFamily('nunitoexb')
                      .size(18)
                      .bold
                      .makeCentered(),
                ],
              ).pOnly(left: 20, right: 20),
              10.heightBox,
              Container(
                decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage('images/shirt.png'),
                          fit: BoxFit.cover,
                          height: 40,
                          width: 40,
                        ),
                        VStack([
                          "Shirt"
                              .text
                              .size(14)
                              .color(colorName.primary)
                              .fontFamily('nunito')
                              .bold
                              .make(),
                          "IDR 7.000/Pieces"
                              .text
                              .size(12)
                              .fontFamily('nunito')
                              .bold
                              .make(),
                        ]),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () => c.shirtmin(),
                                icon: Image(
                                  image: AssetImage('images/min.png'),
                                ),
                              ),
                              5.widthBox,
                              Obx(() => "${c.shirt.toString()}"
                                  .text
                                  .fontFamily('nunitoexb')
                                  .size(16)
                                  .make()),
                              5.widthBox,
                              IconButton(
                                onPressed: () => c.shirtplus(),
                                icon: Image(
                                  image: AssetImage('images/plus.png'),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ).pOnly(left: 20, right: 20),
                    15.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage('images/tshirt.png'),
                          fit: BoxFit.cover,
                          height: 40,
                          width: 35,
                        ),
                        VStack([
                          "T-Shirt"
                              .text
                              .size(14)
                              .color(colorName.primary)
                              .fontFamily('nunito')
                              .bold
                              .make(),
                          "IDR 5.000/Pieces"
                              .text
                              .size(12)
                              .fontFamily('nunito')
                              .bold
                              .make(),
                        ]),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () => c.tshirtmin(),
                                icon:
                                    Image(image: AssetImage('images/min.png')),
                              ),
                              5.widthBox,
                              Obx(() => "${c.tshirt.toString()}"
                                  .text
                                  .fontFamily('nunitoexb')
                                  .size(16)
                                  .make()),
                              5.widthBox,
                              IconButton(
                                onPressed: () => c.tshirtplus(),
                                icon:
                                    Image(image: AssetImage('images/plus.png')),
                              ),
                            ],
                          ),
                        )
                      ],
                    ).pOnly(left: 20, right: 20),
                    15.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage('images/underwear.png'),
                          fit: BoxFit.cover,
                          height: 40,
                          width: 35,
                        ),
                        VStack([
                          "Underwear"
                              .text
                              .size(14)
                              .color(colorName.primary)
                              .fontFamily('nunito')
                              .bold
                              .make(),
                          "IDR 3.000/Pieces"
                              .text
                              .size(12)
                              .fontFamily('nunito')
                              .bold
                              .make(),
                        ]),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () => c.underwearmin(),
                                icon:
                                    Image(image: AssetImage('images/min.png')),
                              ),
                              5.widthBox,
                              Obx(() => "${c.underwear.toString()}"
                                  .text
                                  .fontFamily('nunitoexb')
                                  .size(16)
                                  .make()),
                              5.widthBox,
                              IconButton(
                                onPressed: () => c.underwearplus(),
                                icon:
                                    Image(image: AssetImage('images/plus.png')),
                              ),
                            ],
                          ),
                        )
                      ],
                    ).pOnly(left: 20, right: 20),
                    15.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage('images/pants.png'),
                          fit: BoxFit.cover,
                          height: 40,
                          width: 35,
                        ),
                        VStack([
                          "Pants"
                              .text
                              .size(14)
                              .color(colorName.primary)
                              .fontFamily('nunito')
                              .bold
                              .make(),
                          "IDR 8.000/Pieces"
                              .text
                              .size(12)
                              .fontFamily('nunito')
                              .bold
                              .make(),
                        ]),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () => c.pantsmin(),
                                icon:
                                    Image(image: AssetImage('images/min.png')),
                              ),
                              5.widthBox,
                              Obx(() => "${c.pants.toString()}"
                                  .text
                                  .fontFamily('nunitoexb')
                                  .size(16)
                                  .make()),
                              5.widthBox,
                              IconButton(
                                onPressed: () => c.pantsplus(),
                                icon:
                                    Image(image: AssetImage('images/plus.png')),
                              ),
                            ],
                          ),
                        )
                      ],
                    ).pOnly(left: 20, right: 20),
                  ],
                ).pOnly(top: 20, bottom: 20),
              ).pOnly(left: 20, right: 20, bottom: 20),
            ],
          ),
        ),
      ).scrollVertical(),
    );
  }
}
