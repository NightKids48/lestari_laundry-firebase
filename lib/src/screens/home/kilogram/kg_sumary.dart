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
        title: "Ringkasan Order"
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
                '18.000'
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
              Get.off(KgPayment());
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
                    "Cuci Lengkap"
                        .text
                        .size(14)
                        .color(colorName.primary)
                        .bold
                        .make(),
                    "IDR 5.000/KG".text.size(12).bold.make(),
                  ]).pOnly(left: 20),
                ]),
              ]),
            ).pOnly(left: 20, right: 20).wFull(context),
            10.heightBox,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorName.background,
              ),
              child: VStack([
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Total Kilogram"
                        .text
                        .size(14)
                        .color(colorName.primary)
                        .bold
                        .make(),
                    "3 KG".text.size(14).color(colorName.black).bold.make(),
                  ],
                ),
              ]).p(15),
            ).pOnly(left: 20, right: 20).wFull(context),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Instruksi tambahan"
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
                  "Detail pengiriman"
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
                "Lokasi lebih dari 2KM akan di kenakan IDR 3.000/KG"
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
              ]).pOnly(left: 10, right: 10, top: 20, bottom: 20),
            ).pOnly(left: 20, right: 20).wFull(context),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Ringkasan pembayaran"
                      .text
                      .size(18)
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Cuci lengkap"
                        .text
                        .size(14)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.button)
                        .make(),
                    "15.000"
                        .text
                        .size(14)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.button)
                        .make(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Ongkos kirim"
                        .text
                        .size(14)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.button)
                        .make(),
                    "3.000"
                        .text
                        .size(14)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.button)
                        .make(),
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
                        .pOnly(top: 10, bottom: 10),
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
                VxDivider().pOnly(top: 10, bottom: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Total Pembayaran"
                        .text
                        .size(14)
                        .color(colorName.primary)
                        .bold
                        .fontFamily('nunito')
                        .make(),
                    "18.000"
                        .text
                        .size(14)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.primary)
                        .make(),
                  ],
                )
              ]).pOnly(left: 10, right: 10, top: 20, bottom: 20),
            ).pOnly(left: 20, right: 20, bottom: 20).wFull(context),
          ],
        ),
      ).scrollVertical(),
    );
  }
}
