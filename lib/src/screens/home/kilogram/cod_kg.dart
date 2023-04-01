part of '../../screens.dart';

class CodKg extends StatefulWidget {
  const CodKg({super.key});

  @override
  State<CodKg> createState() => _CodKgState();
}

class _CodKgState extends State<CodKg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorName.background,
        iconTheme: IconThemeData(color: colorName.primary),
        title: "Cash on Delivery"
            .text
            .size(18)
            .fontFamily('nunitoexb')
            .bold
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
                    .bold
                    .make(),
                220.widthBox,
                'IDR '
                    .text
                    .fontFamily('nunitoexb')
                    .color(colorName.button)
                    .size(14)
                    .bold
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
            text: 'Continue',
            onPressed: () {
              context.goNamed('orderdetailkg');
            },
          ).pOnly(left: 20, right: 20, bottom: 20, top: 5),
        ]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: colorName.primary),
                  color: colorName.scndprimary),
              child: Center(
                child: VStack([
                  "You can pay in cash when you receive the"
                      .text
                      .size(14)
                      .fontFamily('nunito')
                      .bold
                      .color(colorName.primary)
                      .makeCentered(),
                  "finished laundry at the destination"
                      .text
                      .size(14)
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .bold
                      .makeCentered(),
                ]).p(20),
              ),
            ).pOnly(left: 20, right: 20, top: 20).wFull(context),
            VStack([
              Row(
                children: [
                  "e.g Lorem ipsum dolor sit amet. Consectur adipiscing elit."
                      .text
                      .size(12)
                      .fontFamily('nunito')
                      .color(colorName.grey)
                      .make()
                      .pOnly(left: 20, top: 20)
                ],
              ),
              Row(
                children: [
                  "Payment summary"
                      .text
                      .size(18)
                      .bold
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .make()
                      .p(20)
                ],
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorName.background,
              ),
              child: VStack([
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Full sertvice laundry"
                        .text
                        .size(12)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.grey)
                        .make()
                        .p(10),
                    "5.000"
                        .text
                        .size(12)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.button)
                        .make()
                        .p(10),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Delivery fee"
                        .text
                        .size(12)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.grey)
                        .make()
                        .pOnly(left: 10, right: 10),
                    "3.000"
                        .text
                        .size(12)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.button)
                        .make()
                        .pOnly(left: 10, right: 10),
                  ],
                ),
                Row(
                  children: [
                    "* "
                        .text
                        .size(12)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.maroon)
                        .make()
                        .pOnly(left: 10, top: 10, bottom: 10),
                    "Your location is more than 3km"
                        .text
                        .size(12)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.grey)
                        .make()
                        .pOnly(top: 10, bottom: 10)
                  ],
                ),
                VxDivider().pOnly(left: 10, right: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Total Payment"
                        .text
                        .size(14)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.primary)
                        .make(),
                    "8.000"
                        .text
                        .size(14)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.primary)
                        .make()
                  ],
                ).p(10),
              ]),
            ).pOnly(left: 20, right: 20),
          ],
        ),
      ),
    );
  }
}
