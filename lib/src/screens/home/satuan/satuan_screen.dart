part of '../../screens.dart';

class SatuanScreen extends StatefulWidget {
  const SatuanScreen({super.key});

  @override
  State<SatuanScreen> createState() => _SatuanScreenState();
}

class _SatuanScreenState extends State<SatuanScreen> {
  int _value = 1;

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
              ''
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
              ""
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
              context.goNamed('satuanservice');
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
                  width: 325,
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
                        width: 160,
                        decoration: BoxDecoration(
                          color: colorName.layer,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: "By Kilogram"
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
                        width: 160,
                        decoration: BoxDecoration(
                          color: colorName.primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: "By Pieces"
                            .richText
                            .color(colorName.background)
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
              10.heightBox,
              Row(
                children: [
                  "Add Items"
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
                    ListTile(
                      leading: Image(
                        image: AssetImage('images/shirt.png'),
                        fit: BoxFit.cover,
                        height: 45,
                        width: 40,
                      ),
                      title: Column(
                        children: [
                          Row(
                            children: [
                              "Shirt"
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
                              "IDR 7.000/Pieces"
                                  .text
                                  .size(12)
                                  .fontFamily('nunito')
                                  .bold
                                  .make(),
                            ],
                          ),
                        ],
                      ),
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
                    15.heightBox,
                    ListTile(
                      leading: Image(
                        image: AssetImage('images/tshirt.png'),
                        fit: BoxFit.cover,
                        height: 45,
                        width: 35,
                      ),
                      title: Column(
                        children: [
                          Row(
                            children: [
                              "T-Shirt"
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
                              "IDR 5.000/Pieces"
                                  .text
                                  .size(12)
                                  .fontFamily('nunito')
                                  .bold
                                  .make(),
                            ],
                          ),
                        ],
                      ),
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
                    15.heightBox,
                    ListTile(
                      leading: Image(
                        image: AssetImage('images/underwear.png'),
                        fit: BoxFit.cover,
                        height: 45,
                        width: 35,
                      ),
                      title: Column(
                        children: [
                          Row(
                            children: [
                              "Underwear"
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
                              "IDR 3.000/Pieces"
                                  .text
                                  .size(12)
                                  .fontFamily('nunito')
                                  .bold
                                  .make(),
                            ],
                          ),
                        ],
                      ),
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
                    15.heightBox,
                    ListTile(
                      leading: Image(
                        image: AssetImage('images/pants.png'),
                        fit: BoxFit.cover,
                        height: 45,
                        width: 35,
                      ),
                      title: Column(
                        children: [
                          Row(
                            children: [
                              "Pants"
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
                              "IDR 8.000/Pieces"
                                  .text
                                  .size(12)
                                  .fontFamily('nunito')
                                  .bold
                                  .make(),
                            ],
                          ),
                        ],
                      ),
                      trailing: Radio(
                        value: 4,
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
              ).pOnly(left: 20, right: 20, bottom: 20),
            ],
          ),
        ),
      ).scrollVertical(),
    );
  }
}
