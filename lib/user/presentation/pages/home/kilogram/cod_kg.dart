part of '../../../screens.dart';

class CodKg extends StatefulWidget {
  const CodKg({super.key});

  @override
  State<CodKg> createState() => _CodKgState();
}

class _CodKgState extends State<CodKg> {
  final OrderController orderController = Get.find<OrderController>();
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
                      "${Commons().setPrice(double.parse(orderController.totalData?.totalPrice ?? '0'))}"
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
            text: 'Lanjutkan',
            onPressed: () {
              BlocProvider.of<TransactionCubit>(context).btntransaction(
                TransactionDataRequest(
                  'Dijemput',
                  [
                    Orders(
                      orderController.layananData!.id,
                      orderController.totalData!.totalKilogram,
                    ),
                  ],
                  [
                    0,
                  ],
                  TransactionsDelivery([0], ''),
                  TransactionDataPaymentInfo(0, '', ''),
                ),
              );
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
                  "Siapkan jumlah uang yang tertera di bawah"
                      .text
                      .size(14)
                      .fontFamily('nunito')
                      .bold
                      .color(colorName.primary)
                      .makeCentered(),
                  "ketika kurir menjemput laundry kamu"
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
                  "Ringkasan pembayaran"
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
                    "${orderController.layananData?.name}"
                        .text
                        .size(12)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.grey)
                        .make()
                        .p(10),
                    "${Commons().setPrice(double.parse(orderController.totalData?.totalPrice ?? '0'))}"
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
                    "Ongkos kirim"
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
                    "Total Pembayaran"
                        .text
                        .size(14)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.primary)
                        .make(),
                    "${Commons().setPrice(double.parse(orderController.totalData?.totalPrice ?? '0'))}"
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
