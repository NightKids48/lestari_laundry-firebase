part of '../../../screens.dart';

class KgSumary extends StatefulWidget {
  KgSumary({super.key});

  @override
  State<KgSumary> createState() => _KgSumaryState();
}

class _KgSumaryState extends State<KgSumary> {
  final OrderController orderController = Get.find<OrderController>();
  final instruksiTambahanController = TextEditingController();

  ongkosKirim({
    int tarif = 2000,
    required int totalKilo,
    required double jarak,
  }) {
    if (jarak > 2) {
      tarif = 3000;
    }
    final ongkosKirim = (jarak * tarif) + (totalKilo * tarif);
    return ongkosKirim.toInt();
  }

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
          ButtonWidget(
            text: 'Lanjutkan',
            onPressed: () {
              context.goNamed('kgpayment');
            },
          ).pOnly(left: 20, right: 20, bottom: 20, top: 10),
        ]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
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
                border: Border.all(color: colorName.greys),
              ),
              child: VStack([
                Row(
                  children: [
                    SvgPicture.network('${orderController.layananData?.image}')
                        .p(10),
                    VStack([
                      "${orderController.layananData?.name}"
                          .text
                          .size(16)
                          .fontFamily('nunitoexb')
                          .color(colorName.primary)
                          .bold
                          .make(),
                      "${Commons().setPrice(double.parse(orderController.layananData?.price ?? '0'))} / KG"
                          .text
                          .size(13)
                          .fontFamily('nunito')
                          .bold
                          .make(),
                    ]).pOnly(left: 20),
                  ],
                )
              ]),
            ).pOnly(left: 20, right: 20).wFull(context),
            10.heightBox,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorName.background,
                border: Border.all(color: colorName.greys),
              ),
              child: VStack([
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Total Kilogram"
                        .text
                        .size(16)
                        .fontFamily('nunitoexb')
                        .color(colorName.primary)
                        .bold
                        .make(),
                    "${orderController.totalData?.totalKilogram} KG"
                        .text
                        .size(14)
                        .fontFamily('nunito')
                        .color(colorName.black)
                        .bold
                        .make()
                        .pOnly(right: 20),
                  ],
                ),
              ]).p(15),
            ).pOnly(left: 20, right: 20).wFull(context),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
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
                      .make()
                      .onTap(() {})
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorName.background,
                border: Border.all(color: colorName.greys),
              ),
              child: TextFormField(
                controller: instruksiTambahanController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Ketik pesan ...',
                  hintStyle: TextStyle(
                      color: colorName.grey,
                      fontSize: 14,
                      fontFamily: 'nunitoexb'),
                ),
              ).p(10),
            ).pOnly(left: 20, right: 20).wFull(context),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
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
                border: Border.all(color: colorName.greys),
              ),
              child: VStack([
                "Lestari Delivery"
                    .text
                    .size(16)
                    .color(colorName.primary)
                    .bold
                    .fontFamily('nunitoexb')
                    .make(),
                10.heightBox,
                "Lokasi lebih dari 2 KM akan di kenakan IDR 3.000/KG"
                    .text
                    .size(14)
                    .bold
                    .color(colorName.grey)
                    .fontFamily('nunito')
                    .make(),
              ]).pOnly(left: 10, right: 10, top: 10, bottom: 10),
            ).pOnly(left: 20, right: 20).wFull(context),
            10.heightBox,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorName.background,
                border: Border.all(color: colorName.greys),
              ),
              child: VStack([
                HStack([
                  "Name : "
                      .text
                      .size(16)
                      .bold
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .make(),
                  "${orderController.detailPenerima?.name}"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make(),
                ]),
                VxDivider().pOnly(top: 5, bottom: 5),
                HStack([
                  "Phone Number : "
                      .text
                      .size(16)
                      .bold
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .make(),
                  "${orderController.detailPenerima?.phoneNumber}"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make(),
                ]),
                VxDivider().pOnly(top: 5, bottom: 5),
                HStack([
                  "Adress : "
                      .text
                      .size(16)
                      .bold
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .make(),
                  "${orderController.detailPenerima?.address}"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make(),
                ]),
              ]).pOnly(left: 10, right: 10, top: 10, bottom: 10),
            ).pOnly(left: 20, right: 20).wFull(context),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
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
                border: Border.all(color: colorName.greys),
              ),
              child: BlocBuilder<LocationCubit, LocationState>(
                builder: (context, state) {
                  if (state is LocationIsError) {
                    return CircularProgressIndicator();
                  } else if (state is LocationIsSuccess) {
                    var ongkosKirim = Commons().ongkosKirim(
                      totalKilo: int.parse(
                        orderController.totalData!.totalKilogram,
                      ),
                      jarak: state.distance,
                    );
                    return VStack([
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "${orderController.layananData?.name}"
                              .text
                              .size(16)
                              .bold
                              .fontFamily('nunitoexb')
                              .color(colorName.button)
                              .make(),
                          "${Commons().setPrice(double.parse(orderController.totalData?.totalPrice ?? '0'))}"
                              .text
                              .size(14)
                              .bold
                              .fontFamily('nunito')
                              .color(colorName.button)
                              .make(),
                        ],
                      ).pOnly(left: 10, right: 10, top: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "Ongkos kirim"
                              .text
                              .size(16)
                              .bold
                              .fontFamily('nunitoexb')
                              .color(colorName.button)
                              .make(),
                          "${Commons().setPrice(ongkosKirim.toDouble())}"
                              .text
                              .size(14)
                              .fontFamily('nunito')
                              .bold
                              .color(colorName.button)
                              .make()
                        ],
                      ).pOnly(left: 10, right: 10, top: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          "* "
                              .text
                              .size(12)
                              .bold
                              .fontFamily('nunito')
                              .color(colorName.maroon)
                              .make()
                              .pOnly(top: 5, bottom: 5),
                          "${state.distance.toInt()} Km"
                              .text
                              .size(12)
                              .bold
                              .fontFamily('nunito')
                              .color(colorName.grey)
                              .make()
                              .pOnly(top: 5, bottom: 5)
                        ],
                      ).pOnly(left: 10, right: 10),
                      VxDivider().pOnly(left: 10, right: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "Total Pembayaran"
                              .text
                              .size(16)
                              .color(colorName.primary)
                              .bold
                              .fontFamily('nunitoexb')
                              .make(),
                          "IDR ${int.parse(orderController.totalData!.totalPrice) + ongkosKirim}"
                              .text
                              .size(14)
                              .bold
                              .fontFamily('nunito')
                              .color(colorName.primary)
                              .make(),
                        ],
                      ).pOnly(left: 10, right: 10, bottom: 10, top: 10),
                    ]);
                  }
                  return Text('0');
                },
              ),
            ).pOnly(left: 20, right: 20, bottom: 20).wFull(context),
          ],
        ),
      ).scrollVertical(),
    );
  }
}
