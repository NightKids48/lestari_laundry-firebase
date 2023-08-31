part of '../../../../screens.dart';

class KilogramScreen extends StatefulWidget {
  const KilogramScreen({super.key});

  @override
  State<KilogramScreen> createState() => _KilogramScreenState();
}

class _KilogramScreenState extends State<KilogramScreen> {
  int? _value;
  int _selectedRadio = 0;
  String? _layananImage;
  String? _layananName;
  int? _idLayanan;
  var count = 0.obs;
  final MyController c = Get.put(MyController());
  final OrderController orderController = Get.put(OrderController());

  bool validationBtn() {
    if (c.totalkilogram != 0 && _selectedRadio != 0) {
      return true;
    } else {
      return false;
    }
  }

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
                  '1'
                      .text
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .size(14)
                      .bold
                      .make(),
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
                  Obx(() =>
                      "${_selectedRadio * int.parse(c.totalkilogram.toString())}"
                          .text
                          .fontFamily('nunitoexb')
                          .color(colorName.primary)
                          .size(14)
                          .bold
                          .make()),
                ]),
              ),
            ],
          ).pOnly(left: 20, right: 20, top: 10),
          ButtonWidget(
            text: "Lanjutkan",
            onPressed: validationBtn()
                ? () async {
                    TotalData newTotalData = TotalData(
                      totalPrice:
                          '${_selectedRadio * int.parse(c.totalkilogram.toString())}',
                      totalKilogram: c.totalkilogram.toString(),
                    );

                    LayananData newLayananData = LayananData(
                      id: _idLayanan!,
                      image: _layananImage.toString(),
                      name: _layananName.toString(),
                      price: _selectedRadio.toString(),
                    );
                    orderController.setTotalData(newTotalData);
                    orderController.setLayananData(newLayananData);
                    context.goNamed(
                      routeName.orderkg,
                      extra: {
                        'totalData': newTotalData,
                        'layananData': newLayananData,
                      },
                    );
                  }
                : null,
          ).p(20),
        ]),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: colorName.primary),
        elevation: 0,
        backgroundColor: colorName.background,
        title: Text(
          "Layanan Kami",
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'nunitoexb',
            fontWeight: FontWeight.bold,
            color: colorName.button,
          ),
        ).centered(),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              20.heightBox,
              HStack(
                [
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: colorName.layer,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: colorName.greys),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: 160,
                          decoration: BoxDecoration(
                            color: colorName.primary,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: "Kilogram"
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
                        5.widthBox,
                        Container(
                          height: 45,
                          width: 160,
                          decoration: BoxDecoration(
                            color: colorName.layer,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: "Satuan"
                              .richText
                              .color(colorName.grey)
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
                  ).pOnly(left: 20, right: 20),
                ],
              ).scrollHorizontal(),
              20.heightBox,
              Row(
                children: [
                  "Pilih Kategori"
                      .richText
                      .color(colorName.button)
                      .fontFamily('nunitoexb')
                      .size(18)
                      .bold
                      .makeCentered(),
                ],
              ).pOnly(left: 20, right: 20, top: 20),
              20.heightBox,
              Container(
                height: 180,
                decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: colorName.greys),
                ),
                child: BlocBuilder<KilogramCubit, KilogramState>(
                  builder: (context, state) {
                    if (state is KilogramIsLoading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is KilogramIsSucces) {
                      return ListView.builder(
                        itemCount: state.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          var data = state.data![index].attributes;
                          var dataImage = state.data![index].attributes
                              .productImage.data.attributes;
                          return ListTile(
                            leading: SvgPicture.network(
                              BaseConfig.BASE_IMAGE_DOMAIN + dataImage.url,
                              fit: BoxFit.cover,
                              height: 50,
                            ),
                            title: Column(
                              children: [
                                Row(
                                  children: [
                                    "${data.productName}"
                                        .text
                                        .size(14)
                                        .color(colorName.primary)
                                        .fontFamily('nunito')
                                        .bold
                                        .make(),
                                  ],
                                ),
                                Row(
                                  children: [
                                    "IDR ${data.productPrice}/KG"
                                        .text
                                        .size(12)
                                        .fontFamily('nunito')
                                        .color(colorName.button)
                                        .bold
                                        .make(),
                                  ],
                                ),
                              ],
                            ).pOnly(left: 20),
                            trailing: Radio(
                              value: index,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _idLayanan = state.data![index].id;
                                  _selectedRadio = int.parse(data.productPrice);
                                  _layananImage = BaseConfig.BASE_IMAGE_DOMAIN +
                                      dataImage.url;
                                  _layananName = data.productName;
                                  _value = value as int;
                                });
                              },
                            ),
                          );
                        },
                      );
                    }
                    return Container(child: Center(child: Text('Kosong')));
                  },
                ),
                // .paddingSymmetric(vertical: 20),
              ).paddingSymmetric(horizontal: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorName.background,
                  border: Border.all(color: colorName.greys),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VStack([
                      "Jumlah Kilogram"
                          .richText
                          .color(colorName.primary)
                          .fontFamily('nunitoexb')
                          .size(16)
                          .bold
                          .makeCentered(),
                    ]).p(10),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () => c.totalkilogrammin(),
                            icon: Image(
                              image: AssetImage('images/min.png'),
                            ),
                          ),
                          5.widthBox,
                          Obx(() => "${c.totalkilogram.toString()}"
                              .text
                              .fontFamily('nunitoexb')
                              .size(16)
                              .make()),
                          5.widthBox,
                          IconButton(
                            onPressed: () => c.totalkilogramplus(),
                            icon: Image(
                              image: AssetImage('images/plus.png'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ).p(20),
            ],
          ),
        ),
      ).scrollVertical(),
    );
  }
}
