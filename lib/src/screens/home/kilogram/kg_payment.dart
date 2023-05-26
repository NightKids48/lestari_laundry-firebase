part of '../../screens.dart';

class KgPayment extends StatefulWidget {
  const KgPayment({super.key});

  @override
  State<KgPayment> createState() => _KgPaymentState();
}

class _KgPaymentState extends State<KgPayment> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorName.background,
        iconTheme: IconThemeData(color: colorName.primary),
        title: "Pembayaran"
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
                Container(
                  child: Row(
                    children: [
                      'Total Items: '
                          .text
                          .fontFamily('nunitoexb')
                          .color(colorName.button)
                          .size(14)
                          .bold
                          .make(),
                      '1'
                          .text
                          .fontFamily('nunitoexb')
                          .color(colorName.primary)
                          .size(14)
                          .bold
                          .make(),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      'IDR '
                          .text
                          .fontFamily('nunitoexb')
                          .color(colorName.button)
                          .size(14)
                          .bold
                          .make(),
                      '18.000'
                          .text
                          .fontFamily('nunitoexb')
                          .color(colorName.primary)
                          .size(14)
                          .bold
                          .make(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ButtonWidget(
            text: 'Continue',
            onPressed: () {
              Get.off(CodKg());
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
                children: [
                  "Metode Pembayaran"
                      .text
                      .size(18)
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .make(),
                ],
              ),
            ),
            Container(
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorName.background),
              child: VStack([
                ListTile(
                  leading: Image(
                    image: AssetImage('images/cod.png'),
                    fit: BoxFit.cover,
                    width: 50,
                  ),
                  title: "Cash on Delivery"
                      .text
                      .size(14)
                      .color(colorName.primary)
                      .fontFamily('nunito')
                      .bold
                      .make(),
                  trailing: Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(
                        () {
                          _value = value!;
                        },
                      );
                    },
                  ),
                ),
                VxDivider().pOnly(left: 10, right: 10),
                ListTile(
                  leading: Image(
                    image: AssetImage('images/qris.png'),
                    fit: BoxFit.cover,
                    width: 50,
                  ),
                  title: "Bank Transfer/QRIS"
                      .text
                      .size(14)
                      .color(colorName.primary)
                      .fontFamily('nunito')
                      .bold
                      .make(),
                  trailing: Radio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                ),
              ]),
            ).pOnly(left: 20, right: 20),
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
                  "Ringkasan Pembayaran"
                      .text
                      .size(18)
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
                    "Cuci lengkap"
                        .text
                        .size(12)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.grey)
                        .make()
                        .p(10),
                    "15.000"
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
                        .color(colorName.grey)
                        .make()
                        .pOnly(left: 10, top: 10, bottom: 10),
                    "Lokasi kamu lebih dari 2km"
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
                    "Total Pembayaran"
                        .text
                        .size(14)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.primary)
                        .make(),
                    "18.000"
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
