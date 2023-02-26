part of 'screens.dart';

class DetailRegistered extends StatefulWidget {
  const DetailRegistered({super.key});

  @override
  State<DetailRegistered> createState() => _DetailRegisteredState();
}

class _DetailRegisteredState extends State<DetailRegistered> {
  bool statusSwitch = true;
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
                .fontFamily('nunito')
                .color(colorName.black)
                .size(14)
                .bold
                .make(),
            5.widthBox,
            '1'
                .text
                .fontFamily('nunito')
                .color(colorName.primary)
                .size(14)
                .bold
                .make(),
            210.widthBox,
            'IDR '
                .text
                .fontFamily('nunito')
                .color(colorName.black)
                .size(14)
                .bold
                .make(),
            '5.000'
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
        title: 'Laundry by Kilogram'
            .text
            .fontFamily('nunito')
            .color(colorName.black)
            .bold
            .size(17)
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
                    .size(16)
                    .fontFamily('nunito')
                    .bold
                    .color(colorName.black)
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
                          .size(14)
                          .fontFamily('nunito')
                          .bold
                          .color(colorName.black)
                          .make(),
                      Switch.adaptive(
                        inactiveThumbColor: colorName.layer,
                        value: statusSwitch,
                        onChanged: (value) {
                          setState(
                            () {
                              statusSwitch = !statusSwitch;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailOrder(),
                                ),
                              );
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
                          .size(12)
                          .bold
                          .fontFamily('nunito')
                          .color(colorName.black)
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
                          .size(12)
                          .fontFamily('nunito')
                          .bold
                          .color(colorName.black)
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
                          .size(12)
                          .bold
                          .color(colorName.black)
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
                          .size(12)
                          .fontFamily('nunito')
                          .bold
                          .color(colorName.black)
                          .make(),
                      'Optional'
                          .text
                          .size(12)
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
                'Select delivery type'
                    .text
                    .size(16)
                    .fontFamily('nunito')
                    .bold
                    .color(colorName.black)
                    .make(),
              ],
            ).pOnly(left: 20, right: 20, top: 20),
            10.heightBox,
            Container(
              height: 85,
              decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Lestari delivery',
                  hintStyle: TextStyle(
                    color: colorName.primary,
                    fontFamily: 'nunito',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(),
                ),
              ).p(15),
            ).pOnly(left: 20, right: 20, bottom: 20),
            Row(
              children: [
                'Any special instructions?  '
                    .text
                    .size(16)
                    .fontFamily('nunito')
                    .bold
                    .color(colorName.black)
                    .make(),
                'Optional'
                    .text
                    .size(16)
                    .fontFamily('nunito')
                    .bold
                    .color(colorName.silver)
                    .make(),
              ],
            ).pOnly(left: 20, right: 20),
            10.heightBox,
            Container(
              height: 85,
              decoration: BoxDecoration(
                  color: colorName.background,
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '',
                  border: OutlineInputBorder(),
                ),
              ).p(15),
            ).pOnly(left: 20, right: 20, bottom: 20),
          ],
        ),
      ).scrollVertical(),
    );
  }
}
