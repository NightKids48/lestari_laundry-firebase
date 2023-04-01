part of '../../screens.dart';

class KgSumary extends StatelessWidget {
  const KgSumary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      appBar: AppBar(
        iconTheme: IconThemeData(color: colorName.primary),
        elevation: 0,
        backgroundColor: colorName.background,
        title: "Order Sumary"
            .text
            .size(18)
            .fontFamily('nunitoexb')
            .color(colorName.button)
            .makeCentered(),
        actions: [
          Icon(
            Icons.cancel,
            color: colorName.grey,
          ).pOnly(right: 20)
        ],
      ),
      bottomNavigationBar: ColoredBox(
        color: colorName.background,
        child: VStack([
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Total'
                    .text
                    .fontFamily('nunitoexb')
                    .color(colorName.button)
                    .size(14)
                    .make(),
                220.widthBox,
                'IDR '
                    .text
                    .fontFamily('nunitoexb')
                    .color(colorName.button)
                    .size(14)
                    .make(),
                ''
                    .text
                    .fontFamily('nunito')
                    .color(colorName.primary)
                    .size(14)
                    .bold
                    .make()
              ],
            ),
          ),
          ButtonWidget(
            text: 'Payment',
            onPressed: () {
              context.goNamed('kgpayment');
            },
          ).pOnly(left: 20, right: 20, bottom: 20, top: 5),
        ]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Items"
                      .text
                      .size(18)
                      .bold
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .make(),
                  "Edit"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make(),
                ],
              ),
            ),
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorName.background,
              ),
              child: VStack([
                HStack([
                  Image(
                    image: AssetImage('images/fullservice.png'),
                    fit: BoxFit.cover,
                    width: 60,
                  ).p(10),
                  VStack([
                    "Full Service"
                        .text
                        .size(14)
                        .color(colorName.primary)
                        .bold
                        .make(),
                    "IDR 5.000/KG".text.size(12).bold.make(),
                  ]).pOnly(left: 20),
                ]),
                VStack([
                  Row(
                    children: [
                      "* "
                          .text
                          .size(14)
                          .color(colorName.maroon)
                          .bold
                          .make()
                          .pOnly(left: 10),
                      "Price may cost more after our team calculate it in the store."
                          .text
                          .size(12)
                          .make(),
                    ],
                  ),
                  "We'll let you know by whatsapp."
                      .text
                      .size(12)
                      .make()
                      .pOnly(left: 10),
                ]),
              ]),
            ).pOnly(left: 20, right: 20).wFull(context),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Special instructions"
                      .text
                      .size(18)
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .make(),
                  "Edit"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make(),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorName.background,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText:
                      'e.g Lorem ipsum dolor sit amet consectetur adipiscing',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: colorName.grey, fontSize: 14),
                ),
              ).p(20),
            ).pOnly(left: 20, right: 20).wFull(context),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Delivery details"
                      .text
                      .size(18)
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .make(),
                  "Edit"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make(),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorName.background,
              ),
              child: VStack([
                "Lestari Delivery"
                    .text
                    .size(14)
                    .color(colorName.primary)
                    .bold
                    .fontFamily('nunito')
                    .make(),
                10.heightBox,
                "More than 3km will be cost IDR 3.000/KG"
                    .text
                    .size(14)
                    .bold
                    .color(colorName.button)
                    .fontFamily('nunito')
                    .make(),
              ]).pOnly(left: 10, right: 10, top: 20, bottom: 20),
            ).pOnly(left: 20, right: 20).wFull(context),
            10.heightBox,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorName.background,
              ),
              child: VStack([
                HStack([
                  "Name : "
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .make(),
                  "Vaiz"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make(),
                ]),
                VxDivider().pOnly(top: 10, bottom: 10),
                HStack([
                  "Phone Number : "
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .make(),
                  "+6289866653849"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make(),
                ]),
                VxDivider().pOnly(top: 10, bottom: 10),
                HStack([
                  "Adress : "
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .make(),
                  "Jl. Kemang Timur No.34"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make(),
                ]),
                VxDivider().pOnly(top: 10, bottom: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Total Payment"
                        .text
                        .size(14)
                        .color(colorName.primary)
                        .bold
                        .fontFamily('nunito')
                        .make(),
                    "8.000"
                        .text
                        .size(14)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.primary)
                        .make(),
                  ],
                )
              ]).pOnly(left: 10, right: 10, top: 20, bottom: 20),
            ).pOnly(left: 20, right: 20).wFull(context),
            20.heightBox,
          ],
        ),
      ).scrollVertical(),
    );
  }
}
