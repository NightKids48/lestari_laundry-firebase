part of '../../screens.dart';

class KilogramScreen extends StatefulWidget {
  const KilogramScreen({super.key});

  @override
  State<KilogramScreen> createState() => _KilogramScreenState();
}

class _KilogramScreenState extends State<KilogramScreen> {
  int _value = 1;
  bool isButtonActive = true;
  var count = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      bottomNavigationBar: ColoredBox(
        color: colorName.background,
        child: VStack([
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: HStack([
              'Total Items:'
                  .text
                  .fontFamily('nunitoexb')
                  .color(colorName.button)
                  .size(14)
                  .bold
                  .make(),
              5.widthBox,
              '${_value}'
                  .text
                  .fontFamily('nunito')
                  .color(colorName.primary)
                  .size(14)
                  .bold
                  .make(),
              210.widthBox,
              'IDR '
                  .text
                  .fontFamily('nunitoexb')
                  .color(colorName.button)
                  .size(14)
                  .bold
                  .make(),
              '${_value}'
                  .text
                  .fontFamily('nunito')
                  .color(colorName.primary)
                  .size(14)
                  .bold
                  .make()
            ]),
          ),
          ButtonWidget(
            text: "Continue",
            onPressed: () {
              context.goNamed('orderkg');
            },
          ).p(20),
        ]),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: colorName.primary),
        elevation: 0,
        backgroundColor: colorName.background,
        title: "Our Services"
            .text
            .size(18)
            .fontFamily('nunitoexb')
            .bold
            .color(colorName.button)
            .make()
            .centered(),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              20.heightBox,
              HStack([
                Container(
                  height: 45,
                  width: 325,
                  decoration: BoxDecoration(
                    color: colorName.layer,
                    borderRadius: BorderRadius.circular(50),
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
                        child: "By Kilogram"
                            .richText
                            .color(colorName.background)
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
                        width: 160,
                        decoration: BoxDecoration(
                          color: colorName.layer,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: "By Pieces"
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
              ]),
              20.heightBox,
              HStack([
                Image(
                  image: AssetImage('images/banerkiloan.png'),
                ),
              ]),
              5.heightBox,
              Row(
                children: [
                  "Chosse the category"
                      .richText
                      .color(colorName.button)
                      .fontFamily('nunitoexb')
                      .size(18)
                      .bold
                      .makeCentered(),
                ],
              ).pOnly(left: 20, right: 20, top: 20),
              20.heightBox,
              HStack([
                IconButton(
                  onPressed: () => count--,
                  icon: Icon(Icons.add_box_outlined),
                ),
                Obx(() => Text("$count")),
                IconButton(
                  onPressed: () => count++,
                  icon: Icon(Icons.add_box_outlined),
                ),
              ]),
              Container(
                decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: VStack([HStack([])]),
              ).pOnly(left: 20, right: 20),
              20.heightBox,
              Container(
                decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                        image: AssetImage('images/kering.png'),
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Column(
                        children: [
                          Row(
                            children: [
                              "Dry Wash"
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
                              "IDR 2.500/KG"
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
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
                    VxDivider().pOnly(left: 10, right: 10, bottom: 10),
                    ListTile(
                      leading: Image(
                        image: AssetImage('images/setrika.png'),
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Column(
                        children: [
                          Row(
                            children: [
                              "Iron Only"
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
                              "IDR 2.500/KG"
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
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
                    VxDivider().p(10),
                    ListTile(
                      leading: Image(
                        image: AssetImage('images/fullservice.png'),
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Column(
                        children: [
                          Row(
                            children: [
                              "Full Service"
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
                              "IDR 2.500/KG"
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
                        value: 3,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ).pOnly(top: 20, bottom: 20),
              ).pOnly(left: 20, right: 20),
              40.heightBox,
            ],
          ),
        ),
      ).scrollVertical(),
    );
  }
}
