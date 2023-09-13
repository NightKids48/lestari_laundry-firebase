part of '../../../screens.dart';

class KilogramOrder extends StatefulWidget {
  const KilogramOrder({super.key});

  @override
  State<KilogramOrder> createState() => _KilogramOrderState();
}

class _KilogramOrderState extends State<KilogramOrder> {
  final OrderController orderController = Get.find<OrderController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      appBar: AppBar(
        backgroundColor: colorName.background,
        elevation: 0,
        title: "Detail Pesanan"
            .text
            .color(colorName.button)
            .fontFamily('nunitoexb')
            .size(18)
            .makeCentered(),
      ),
      bottomNavigationBar: ColoredBox(
        color: colorName.background,
        child: VStack([
          ButtonWidget(
            text: 'Kembali Ke Halaman Utama',
            onPressed: () {
              context.goNamed('home');
            },
          ).pOnly(left: 20, right: 20, bottom: 20, top: 10),
        ]),
      ),
      body: SafeArea(
        child: VStack([
          10.heightBox,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorName.background,
              border: Border.all(color: colorName.greys),
            ),
            child: VStack([
              HStack([
                SvgPicture.network('${orderController.layananData?.image}')
                    .p(10),
                VStack([
                  "${orderController.layananData?.name}"
                      .text
                      .size(18)
                      .color(colorName.primary)
                      .fontFamily('nunitoexb')
                      .bold
                      .make(),
                  "${orderController.layananData?.price}/Kg"
                      .text
                      .size(16)
                      .fontFamily('nunitoexb')
                      .bold
                      .make(),
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
                      .size(16)
                      .color(colorName.primary)
                      .fontFamily('nunitoexb')
                      .bold
                      .make(),
                  "${orderController.totalData?.totalKilogram} KG"
                      .text
                      .color(colorName.black)
                      .fontFamily('nunitoexb')
                      .size(18)
                      .bold
                      .make(),
                ],
              ),
            ]).p(15),
          ).pOnly(left: 20, right: 20).wFull(context),
          "Detail pengiriman"
              .text
              .size(18)
              .bold
              .fontFamily('nunitoexb')
              .color(colorName.button)
              .make()
              .p(20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorName.background,
            ),
            child: VStack([
              Row(
                children: [
                  "Lestari Delivery"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunitoexb')
                      .color(colorName.primary)
                      .make()
                      .p(10),
                ],
              ),
              Row(
                children: [
                  "More than 3km will bes cost IDR 3.000/kg"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.silver)
                      .make()
                      .pOnly(left: 10, right: 10, bottom: 10),
                ],
              ),
            ]),
          ).pOnly(left: 20, right: 20, bottom: 10),
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
                "${orderController.detailPenerima?.name}"
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
                "${orderController.detailPenerima?.phoneNumber}"
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
                "${orderController.detailPenerima?.address}"
                    .text
                    .size(14)
                    .bold
                    .fontFamily('nunito')
                    .color(colorName.primary)
                    .make(),
              ]),
            ]).pOnly(left: 10, right: 10, top: 20, bottom: 20),
          ).pOnly(left: 20, right: 20).wFull(context),
          "Ringkasan pembayaran"
              .text
              .size(18)
              .fontFamily('nunitoexb')
              .color(colorName.button)
              .make()
              .p(20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorName.background,
            ),
            child: VStack([
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Metode pembayaran"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.silver)
                      .make()
                      .p(10),
                  "COD"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .make()
                      .p(10),
                ],
              ),
              VxDivider().pOnly(left: 10, right: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "${orderController.layananData?.name}"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.silver)
                      .make()
                      .pOnly(left: 10, top: 10),
                  "${Commons().setPrice(double.parse(orderController.totalData?.totalPrice ?? '0'))}"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .make()
                      .pOnly(right: 10),
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
                      .color(colorName.silver)
                      .make()
                      .pOnly(left: 10),
                  "3.000"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .make()
                      .pOnly(right: 10),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Total Pembayaran"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make()
                      .p(10),
                  "${Commons().setPrice(double.parse(orderController.totalData?.totalPrice ?? '0'))}"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make()
                      .p(10),
                ],
              ),
            ]),
          ).pOnly(left: 20, right: 20, bottom: 20),
        ]),
      ).scrollVertical(),
    );
  }
}
