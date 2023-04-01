part of '../../screens.dart';

class DetailOrderSatuan extends StatefulWidget {
  const DetailOrderSatuan({super.key});

  @override
  State<DetailOrderSatuan> createState() => _DetailOrderSatuanState();
}

class _DetailOrderSatuanState extends State<DetailOrderSatuan> {
  bool statusSwitch = false;
  String? kelas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      bottomNavigationBar: VStack([
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
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
            ''
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
            ArtSweetAlert.show(
              context: context,
              artDialogArgs: ArtDialogArgs(
                  type: ArtSweetAlertType.question,
                  title: "Any special instructions?",
                  text: "Lorem ipsum dolor sit amet"),
            );
          },
        ).pOnly(left: 20, right: 20, bottom: 20, top: 5),
      ]),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: colorName.background,
        title: 'Laundry by Pieces'
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
                'Receiver Details'
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
                              context.goNamed('registersatuan');
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
                      hintText: 'e.g John Dae',
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: colorName.grey, fontSize: 14),
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
                      hintText: 'e.g +6287*********',
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: colorName.grey, fontSize: 14),
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
                      hintText: 'e.g Street name, number',
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: colorName.grey, fontSize: 14),
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
                          .color(colorName.grey)
                          .make(),
                    ],
                  ).pOnly(left: 20, top: 10, bottom: 5),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'e.g Floor, unit number',
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: colorName.grey, fontSize: 14),
                    ),
                  ).pOnly(left: 20, right: 20, bottom: 20),
                ],
              ),
            ).wFull(context).pOnly(left: 20, right: 20),
            Row(
              children: [
                'Select delivery type'
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
                      'Lestari Delivery ',
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
                'Any special instructions?  '
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
