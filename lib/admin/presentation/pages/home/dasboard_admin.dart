part of 'admin_screen.dart';

class DashboardAdmin extends StatelessWidget {
  const DashboardAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      body: SafeArea(
        child: VStack([
          HStack([
            "Hallo, "
                .text
                .size(14)
                .fontFamily('nunito')
                .color(colorName.black)
                .make()
                .pOnly(left: 20, top: 10),
            "user name"
                .text
                .size(14)
                .fontFamily('nunitoexb')
                .color(colorName.secondary)
                .make()
                .pOnly(top: 10),
            "!"
                .text
                .size(14)
                .fontFamily('nunitoexb')
                .color(colorName.black)
                .make()
                .pOnly(top: 10),
          ]),
          "Lorem Ipsum Dolor"
              .text
              .size(16)
              .fontFamily('nunitoexb')
              .color(colorName.black)
              .make()
              .pOnly(left: 20, top: 10),
          HStack([
            "at "
                .text
                .size(16)
                .fontFamily('nunitoexb')
                .color(colorName.black)
                .make(),
            "Loksa Laundry"
                .text
                .size(16)
                .fontFamily('nunitoexb')
                .color(colorName.primary)
                .make(),
            "!"
                .text
                .size(16)
                .fontFamily('nunitoexb')
                .color(colorName.primary)
                .make(),
          ]).pOnly(left: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Report"
                  .text
                  .size(16)
                  .fontFamily('nunitoexb')
                  .color(colorName.black)
                  .make(),
              "Lihat Detail"
                  .text
                  .size(16)
                  .fontFamily('nunitoexb')
                  .color(colorName.primary)
                  .make(),
            ],
          ).pOnly(left: 20, right: 20, top: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('images/pesanan.png'),
              Image.asset('images/penghasilan.png'),
            ],
          ).pOnly(left: 20, right: 20, top: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Orders"
                  .text
                  .size(16)
                  .fontFamily('nunitoexb')
                  .color(colorName.black)
                  .make(),
              "Lihat Detail"
                  .text
                  .size(16)
                  .fontFamily('nunitoexb')
                  .color(colorName.primary)
                  .make(),
            ],
          ).pOnly(left: 20, right: 20, top: 10, bottom: 10),
          Container(
            decoration: BoxDecoration(
              color: colorName.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: VStack([
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: VStack([
                      "Rizky Maulana".text.fontFamily('nunito').size(12).make(),
                      "No. Order #1"
                          .text
                          .fontFamily('nunitoexb')
                          .size(14)
                          .make(),
                    ]),
                  ),
                  Container(
                    child: VStack([
                      "IDR. 18.000"
                          .text
                          .fontFamily('nunitoexb')
                          .size(14)
                          .make(),
                      "13 March 2023"
                          .text
                          .fontFamily('nunito')
                          .size(12)
                          .color(colorName.grey)
                          .make(),
                      "11.15 WIB"
                          .text
                          .fontFamily('nunito')
                          .size(12)
                          .color(colorName.grey)
                          .make(),
                    ]),
                  )
                ],
              ).p(10),
              VxDivider().pOnly(left: 10, right: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: VStack([
                      "Rizky Maulana".text.fontFamily('nunito').size(12).make(),
                      "No. Order #1"
                          .text
                          .fontFamily('nunitoexb')
                          .size(14)
                          .make(),
                    ]),
                  ),
                  Container(
                    child: VStack([
                      "IDR. 18.000"
                          .text
                          .fontFamily('nunitoexb')
                          .size(14)
                          .make(),
                      "13 March 2023"
                          .text
                          .fontFamily('nunito')
                          .size(12)
                          .color(colorName.grey)
                          .make(),
                      "11.15 WIB"
                          .text
                          .fontFamily('nunito')
                          .size(12)
                          .color(colorName.grey)
                          .make(),
                    ]),
                  )
                ],
              ).p(10),
              VxDivider().pOnly(left: 10, right: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: VStack([
                      "Rizky Maulana".text.fontFamily('nunito').size(12).make(),
                      "No. Order #1"
                          .text
                          .fontFamily('nunitoexb')
                          .size(14)
                          .make(),
                    ]),
                  ),
                  Container(
                    child: VStack([
                      "IDR. 18.000"
                          .text
                          .fontFamily('nunitoexb')
                          .size(14)
                          .make(),
                      "13 March 2023"
                          .text
                          .fontFamily('nunito')
                          .size(12)
                          .color(colorName.grey)
                          .make(),
                      "11.15 WIB"
                          .text
                          .fontFamily('nunito')
                          .size(12)
                          .color(colorName.grey)
                          .make(),
                    ]),
                  )
                ],
              ).p(10),
              VxDivider().pOnly(left: 10, right: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: VStack([
                      "Rizky Maulana".text.fontFamily('nunito').size(12).make(),
                      "No. Order #1"
                          .text
                          .fontFamily('nunitoexb')
                          .size(14)
                          .make(),
                    ]),
                  ),
                  Container(
                    child: VStack([
                      "IDR. 18.000"
                          .text
                          .fontFamily('nunitoexb')
                          .size(14)
                          .make(),
                      "13 March 2023"
                          .text
                          .fontFamily('nunito')
                          .size(12)
                          .color(colorName.grey)
                          .make(),
                      "11.15 WIB"
                          .text
                          .fontFamily('nunito')
                          .size(12)
                          .color(colorName.grey)
                          .make(),
                    ]),
                  )
                ],
              ).p(10),
              VxDivider().pOnly(left: 10, right: 10),
              10.heightBox,
            ]),
          ).pOnly(left: 20, right: 20),
        ]),
      ),
    );
  }
}
