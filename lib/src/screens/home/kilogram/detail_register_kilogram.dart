part of '../../screens.dart';

class DetailRegisterKg extends StatefulWidget {
  const DetailRegisterKg({super.key});

  @override
  State<DetailRegisterKg> createState() => _DetailRegisterKgState();
}

class _DetailRegisterKgState extends State<DetailRegisterKg> {
  bool statusSwitch = true;
  String? kelas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      bottomNavigationBar: VStack([
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: HStack([
            'Total items:'
                .text
                .fontFamily('nunitoexb')
                .color(colorName.button)
                .size(14)
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
                .make(),
            '15.000'
                .text
                .fontFamily('nunito')
                .color(colorName.primary)
                .size(14)
                .bold
                .make()
          ]),
        ),
        ButtonWidget(
          text: 'Continue',
          onPressed: () {
            Get.off(KgSumary());
          },
        ).pOnly(left: 20, right: 20, bottom: 20, top: 5),
      ]),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: colorName.background,
        title: 'Laundry Kilogram'
            .text
            .fontFamily('nunitoexb')
            .color(colorName.button)
            .bold
            .size(18)
            .makeCentered(),
        iconTheme: const IconThemeData(color: colorName.primary),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                'Detail Penerima'
                    .text
                    .size(18)
                    .fontFamily('nunitoexb')
                    .bold
                    .color(colorName.button)
                    .make(),
              ],
            ).p(20),
            Container(
              decoration: BoxDecoration(
                color: colorName.background,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Use my registered information'
                          .text
                          .size(16)
                          .fontFamily('nunitoexb')
                          .bold
                          .color(colorName.button)
                          .make(),
                      Switch.adaptive(
                        inactiveThumbColor: colorName.layer,
                        value: statusSwitch,
                        onChanged: (value) {
                          setState(
                            () {
                              statusSwitch = !statusSwitch;
                              context.goNamed('orderkg');
                            },
                          );
                        },
                      ),
                    ],
                  ).pOnly(left: 20, right: 20, top: 10, bottom: 5),
                  const VxDivider().pOnly(left: 20, right: 20),
                  Row(
                    children: [
                      '*'.text.size(15).bold.color(colorName.maroon).make(),
                      'Name'
                          .text
                          .size(14)
                          .bold
                          .fontFamily('nunito')
                          .color(colorName.button)
                          .make(),
                    ],
                  ).pOnly(left: 20, top: 10, bottom: 5),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Vaiz',
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(
                          color: colorName.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'nunito'),
                    ),
                  ).pOnly(left: 20, right: 20),
                  Row(
                    children: [
                      '*'.text.size(15).bold.color(colorName.maroon).make(),
                      'Phone number'
                          .text
                          .size(14)
                          .fontFamily('nunito')
                          .bold
                          .color(colorName.button)
                          .make(),
                    ],
                  ).pOnly(left: 20, top: 10, bottom: 5),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: '+28986653849',
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(
                          color: colorName.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'nunito'),
                    ),
                  ).pOnly(left: 20, right: 20),
                  Row(
                    children: [
                      '*'.text.size(15).bold.color(colorName.maroon).make(),
                      'Address'
                          .text
                          .fontFamily('nunito')
                          .size(14)
                          .bold
                          .color(colorName.button)
                          .make(),
                    ],
                  ).pOnly(left: 20, top: 10, bottom: 5),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Jl. Kemang Timur No.34',
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(
                          color: colorName.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'nunito'),
                    ),
                  ).pOnly(left: 20, right: 20),
                  Row(
                    children: [
                      'Address details  '
                          .text
                          .size(14)
                          .fontFamily('nunito')
                          .bold
                          .color(colorName.button)
                          .make(),
                      'Optional'
                          .text
                          .size(14)
                          .fontFamily('nunito')
                          .bold
                          .color(colorName.silver)
                          .make(),
                    ],
                  ).pOnly(left: 20, top: 10, bottom: 5),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'e.g Floor, unit number',
                      border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: colorName.silver, fontSize: 14),
                    ),
                  ).pOnly(left: 20, right: 20, bottom: 20),
                ],
              ),
            ).wFull(context).pOnly(left: 20, right: 20),
            Row(
              children: [
                'Pilih pengiriman'
                    .text
                    .size(18)
                    .fontFamily('nunitoexb')
                    .bold
                    .color(colorName.button)
                    .make(),
              ],
            ).pOnly(left: 20, right: 20, top: 20),
            10.heightBox,
            Container(
              decoration: BoxDecoration(
                color: colorName.background,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: colorName.grey),
              ),
              child: Row(
                children: [
                  DropdownButton<String?>(
                    value: kelas,
                    style: TextStyle(
                      color: colorName.button,
                      fontFamily: 'nunitoexb',
                      fontSize: 16,
                    ),
                    underline: Container(),
                    items: [
                      'Lestari Delivery    ',
                      'Go Send',
                    ]
                        .map(
                          (element) => DropdownMenuItem<String?>(
                            child: Text('$element'),
                            value: element,
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(
                        () {
                          if (value != null) {
                            kelas = value;
                          }
                        },
                      );
                    },
                  ).pOnly(left: 20, top: 5, bottom: 5),
                ],
              ),
            ).pOnly(left: 20, right: 20, bottom: 20),
            Row(
              children: [
                'Instruksi tambahan  '
                    .text
                    .size(18)
                    .fontFamily('nunitoexb')
                    .bold
                    .color(colorName.button)
                    .make(),
                'Optional'
                    .text
                    .size(18)
                    .fontFamily('nunito')
                    .color(colorName.grey)
                    .make(),
              ],
            ).pOnly(left: 20, right: 20),
            10.heightBox,
            Container(
              decoration: BoxDecoration(
                color: colorName.background,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: colorName.grey),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText:
                      'e.g Lorem ipsum dolor sit amet consectetur adipiscing elit',
                  hintStyle: TextStyle(color: colorName.grey, fontSize: 13),
                  border: InputBorder.none,
                ),
              ).p(10).centered(),
            ).pOnly(left: 20, right: 20, bottom: 20),
          ],
        ),
      ).scrollVertical(),
    );
  }
}
