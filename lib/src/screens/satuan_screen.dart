part of 'screens.dart';

class SatuanScreen extends StatelessWidget {
  const SatuanScreen({super.key});

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
            onPressed: () {},
          ).pOnly(left: 20, right: 20, bottom: 20, top: 5),
        ]),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorName.background,
        iconTheme: const IconThemeData(color: colorName.primary),
        title: 'Our Services'
            .text
            .fontFamily('nunito')
            .color(colorName.button)
            .size(16)
            .bold
            .makeCentered(),
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
                        color: colorName.layer,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: "By Kilogram"
                          .richText
                          .color(colorName.silver)
                          .size(14)
                          .fontFamily('nunito')
                          .bold
                          .makeCentered()
                          .onTap(() {
                        context.goNamed('kilogram');
                      })),
                  Container(
                    height: 45,
                    width: 135,
                    decoration: BoxDecoration(
                      color: colorName.primary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: "By Pieces"
                        .richText
                        .color(colorName.white)
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
            //  image: AssetImage('images/banerkiloan.png'),
            //),
            15.heightBox,
            Row(
              children: [
                "Add Items"
                    .richText
                    .color(colorName.black)
                    .fontFamily('nunito')
                    .size(16)
                    .bold
                    .makeCentered(),
              ],
            ).pOnly(left: 20, right: 20, bottom: 10),
            VStack([
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: HStack([
                  const Image(
                    image: AssetImage('images/shirt.png'),
                    fit: BoxFit.cover,
                    width: 35,
                  ).p(10),
                  VStack([
                    "Shirt "
                        .richText
                        .size(14)
                        .bold
                        .color(colorName.primary)
                        .fontFamily('nunito')
                        .make(),
                    "IDR 7.000/Pieces "
                        .richText
                        .size(12)
                        .fontFamily('nunito')
                        .bold
                        .make(),
                  ]),
                  70.widthBox,
                  HStack([
                    IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage('images/min.png'),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(color: colorName.primary),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage('images/plus.png'),
                      ),
                    ),
                  ])
                ]),
              ).wFull(context).pOnly(left: 20, right: 20),
              10.heightBox,
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: HStack([
                  const Image(
                    image: AssetImage('images/tshirt.png'),
                    fit: BoxFit.cover,
                    width: 35,
                  ).p(10),
                  VStack([
                    "T-Shirt "
                        .richText
                        .size(14)
                        .bold
                        .color(colorName.primary)
                        .fontFamily('nunito')
                        .make(),
                    "IDR 5.000/Pieces "
                        .richText
                        .size(12)
                        .fontFamily('nunito')
                        .bold
                        .make(),
                  ]),
                  70.widthBox,
                  HStack([
                    IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage('images/min.png'),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(color: colorName.primary),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage('images/plus.png'),
                      ),
                    ),
                  ])
                ]),
              ).wFull(context).pOnly(left: 20, right: 20),
              10.heightBox,
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    HStack([
                      const Image(
                        image: AssetImage('images/underwear.png'),
                        fit: BoxFit.cover,
                        width: 35,
                      ).p(10),
                      VStack([
                        "Underwear "
                            .richText
                            .size(14)
                            .bold
                            .color(colorName.primary)
                            .fontFamily('nunito')
                            .make(),
                        "IDR 3.000/Pieces "
                            .richText
                            .size(12)
                            .fontFamily('nunito')
                            .bold
                            .make(),
                      ]),
                      70.widthBox,
                      HStack([
                        IconButton(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage('images/min.png'),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration:
                              const BoxDecoration(color: colorName.primary),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage('images/plus.png'),
                          ),
                        ),
                      ])
                    ]),
                  ],
                ),
              ).wFull(context).pOnly(left: 20, right: 20),
              10.heightBox,
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: HStack([
                  const Image(
                    image: AssetImage('images/pants.png'),
                    fit: BoxFit.cover,
                    width: 35,
                  ).p(10),
                  VStack([
                    "Pants "
                        .richText
                        .size(14)
                        .bold
                        .color(colorName.primary)
                        .fontFamily('nunito')
                        .make(),
                    "IDR 8.000/Pieces "
                        .richText
                        .size(12)
                        .fontFamily('nunito')
                        .bold
                        .make(),
                  ]),
                  70.widthBox,
                  HStack([
                    IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage('images/min.png'),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(color: colorName.primary),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage('images/plus.png'),
                      ),
                    ),
                  ])
                ]),
              ).wFull(context).pOnly(left: 20, right: 20),
            ]),
            20.heightBox,
            Row(
              children: [
                'Any special instructions?  '
                    .text
                    .size(16)
                    .fontFamily('nunito')
                    .bold
                    .color(colorName.black)
                    .make(),
                'Optional'
                    .text
                    .size(16)
                    .fontFamily('nunito')
                    .bold
                    .color(colorName.silver)
                    .make(),
              ],
            ).pOnly(left: 20, right: 20),
            10.heightBox,
            Container(
              height: 85,
              decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '',
                  border: OutlineInputBorder(),
                ),
              ).p(15),
            ).pOnly(left: 20, right: 20, bottom: 20),
          ],
        ),
      ).scrollVertical(),
    );
  }
}
