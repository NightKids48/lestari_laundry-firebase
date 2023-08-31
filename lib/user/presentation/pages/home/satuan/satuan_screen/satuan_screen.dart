part of '../../../../screens.dart';

class SatuanScreen extends StatefulWidget {
  const SatuanScreen({super.key});

  @override
  State<SatuanScreen> createState() => _SatuanScreenState();
}

class _SatuanScreenState extends State<SatuanScreen> {
  int? _value;
  int _selectedRadio = 0;
  String? _layananImage;
  String? _layananName;
  int? _idLayanan;
  var count = 0.obs;

  final MyController c = Get.put(MyController());
  final OrderController o = Get.put(OrderController());
  int selectedItem = 0;
  bool validationBtn() {
    if (c.totalsatuan != 0 && _selectedRadio != 0) {
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
                  Obx(() => "${c.totalsatuan}"
                      .text
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .size(14)
                      .bold
                      .make()),
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
                      "${_selectedRadio * int.parse(c.totalsatuan.toString())}"
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
            onPressed: validationBtn() ? () async {} : null,
          ).p(20),
        ]),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: colorName.primary),
        elevation: 0,
        backgroundColor: colorName.background,
        title: "Service Kami"
            .text
            .size(18)
            .fontFamily('nunitoexb')
            .color(colorName.button)
            .bold
            .make()
            .centered(),
      ),
      body: SafeArea(
        child: Container(
          color: colorName.rightone,
          child: Column(
            children: [
              20.heightBox,
              HStack([
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: colorName.layer,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      50.heightBox,
                      Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          color: colorName.layer,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: "Kilogram"
                            .richText
                            .color(colorName.grey)
                            .size(14)
                            .fontFamily('nunito')
                            .bold
                            .makeCentered()
                            .onTap(
                          () {
                            context.goNamed('kilogram');
                          },
                        ),
                      ),
                      5.widthBox,
                      Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          color: colorName.primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: "Satuan"
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
                    ],
                  ),
                ),
              ]).scrollHorizontal().pOnly(left: 20, right: 20),
              10.heightBox,
              Row(
                children: [
                  "Tambah Items"
                      .richText
                      .color(colorName.button)
                      .fontFamily('nunitoexb')
                      .size(18)
                      .bold
                      .makeCentered(),
                ],
              ).pOnly(left: 20, right: 20),
              10.heightBox,
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: colorName.greys),
                ),
                child: BlocBuilder<SatuanCubit, SatuanState>(
                  builder: (context, state) {
                    if (state is SatuanIsSuccess) {
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
                                    "IDR ${data.productPrice}/Piece"
                                        .text
                                        .size(12)
                                        .fontFamily('nunito')
                                        .color(colorName.button)
                                        .bold
                                        .make(),
                                  ],
                                ),
                              ],
                            ),
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
                    return Container(child: Text(''));
                  },
                ).paddingSymmetric(vertical: 10),
              ).pOnly(left: 20, right: 20, top: 5, bottom: 10),
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
                      "Jumlah Items"
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
                            onPressed: () => c.totalsatuanmin(),
                            icon: Image(
                              image: AssetImage('images/min.png'),
                            ),
                          ),
                          5.widthBox,
                          Obx(() => "${c.totalsatuan.toString()}"
                              .text
                              .fontFamily('nunitoexb')
                              .size(16)
                              .make()),
                          5.widthBox,
                          IconButton(
                            onPressed: () => c.totalsatuanplus(),
                            icon: Image(
                              image: AssetImage('images/plus.png'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ).pOnly(left: 20, right: 20, bottom: 20),
            ],
          ),
        ),
      ).scrollVertical(),
    );
  }
}
