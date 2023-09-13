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
                          .size(16)
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
                      BlocBuilder<LocationCubit, LocationState>(
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
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [],
                              ).pOnly(left: 10, right: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  "IDR ${int.parse(orderController.totalData!.totalPrice) + ongkosKirim}"
                                      .text
                                      .size(14)
                                      .bold
                                      .fontFamily('nunito')
                                      .color(colorName.primary)
                                      .make(),
                                ],
                              ).pOnly(left: 10, right: 10, top: 10),
                            ]);
                          }
                          return Text('0');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ButtonWidget(
            text: 'Lanjutkan',
            onPressed: () {
              _displayBottomSheet(context);
            },
          ).pOnly(left: 20, right: 20, bottom: 10, top: 10)
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
            ).pOnly(left: 20, right: 20),
          ],
        ),
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Container(
        decoration: BoxDecoration(
          color: colorName.background,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        height: 150,
        child: VStack([
          "Lanjutkan Pesanan"
              .text
              .fontFamily('nunitoexb')
              .size(18)
              .color(colorName.button)
              .makeCentered()
              .pOnly(top: 10),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Tidak'),
                style:
                    ElevatedButton.styleFrom(backgroundColor: colorName.button),
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<TransactionCubit>(context)
                      .btntransaction(TransactionCollectionRequest(
                    TransactionDataRequest(
                      '',
                      [
                        TransactionDataOrders(
                          orderController.layananData!.id,
                          orderController.totalData!.totalKilogram,
                        )
                      ],
                      0,
                      TransactionsDelivery(
                        0,
                        '',
                        '',
                      ),
                      TransactionDataPaymentInfo(
                        0,
                        '',
                        '',
                      ),
                      '',
                    ),
                  ));
                  context.goNamed('orderdetailkg');
                },
                child: Text('Iya'),
                style:
                    ElevatedButton.styleFrom(backgroundColor: colorName.button),
              )
            ],
          )
        ]),
      ),
    );
  }
}
