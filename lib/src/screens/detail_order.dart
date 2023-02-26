part of 'screens.dart';

class DetailOrder extends StatefulWidget {
  const DetailOrder({super.key});

  @override
  State<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  bool statusSwitch = false;
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailRegistered(),
              ),
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
                          setState(() {
                            statusSwitch = !statusSwitch;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailRegistered(),
                              ),
                            );
                          });
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
                      hintText: 'e.g John Dae',
                      border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: colorName.silver, fontSize: 14),
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
                      hintText: 'e.g +6287*********',
                      border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: colorName.silver, fontSize: 14),
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
                      hintText: 'e.g Street name, number',
                      border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: colorName.silver, fontSize: 14),
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
