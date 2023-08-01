part of '../../../../screens.dart';

class SatuanScreen extends StatefulWidget {
  const SatuanScreen({super.key});

  @override
  State<SatuanScreen> createState() => _SatuanScreenState();
}

class _SatuanScreenState extends State<SatuanScreen> {
  final MyController c = Get.put(MyController());
  final OrderController o = Get.put(OrderController());
  int selectedItem = 0;

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
                  Obx(() => "${c.shirt}"
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
                  Obx(() => "${c.shirt * selectedItem}"
                      .text
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .size(14)
                      .bold
                      .make()),
                ]),
              ),
            ],
          ).pOnly(left: 20, right: 20, top: 10),
          ButtonWidget(
            color: colorName.primary,
            text: 'Continue',
            onPressed: () {},
          ).p(10)
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
                      10.heightBox,
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
              20.heightBox,
              Row(
                children: [
                  "Tambah Item"
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
                decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
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
                                    BaseConfig.BASE_IMAGE_DOMAIN +
                                        dataImage.url,
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
                                  trailing: HStack([
                                    IconButton(
                                      onPressed: () => c.shirtmin(),
                                      icon: Image(
                                        image: AssetImage('images/min.png'),
                                      ),
                                    ),
                                    5.widthBox,
                                    Obx(() => "${c.shirt.toString()}"
                                        .text
                                        .fontFamily('nunitoexb')
                                        .size(16)
                                        .make()),
                                    5.widthBox,
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          c.shirtplus();
                                          selectedItem =
                                              int.parse(data.productPrice);
                                        });
                                      },
                                      icon: Image(
                                        image: AssetImage('images/plus.png'),
                                      ),
                                    ),
                                  ]),
                                );
                              },
                            );
                          }
                          return Container(child: Text(''));
                        },
                      ),
                    ),
                    15.heightBox,
                  ],
                ).pOnly(top: 20, bottom: 20),
              ).pOnly(left: 20, right: 20, bottom: 20),
            ],
          ),
        ),
      ).scrollVertical(),
    );
  }
}
