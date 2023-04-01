part of '../../screens.dart';

class OrderDetailkg extends StatelessWidget {
  const OrderDetailkg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      appBar: AppBar(
        backgroundColor: colorName.background,
        elevation: 0,
        title: "Order Details"
            .text
            .color(colorName.button)
            .fontFamily('nunitoexb')
            .size(18)
            .makeCentered(),
        actions: [
          Icon(
            Icons.cancel,
            color: colorName.grey,
          ).pOnly(right: 20)
        ],
      ),
      bottomNavigationBar: ColoredBox(
        color: colorName.background,
        child: VStack([
          ButtonWidget(
            text: 'Back to Homepage',
            onPressed: () {
              context.goNamed('home');
            },
          ).pOnly(left: 20, right: 20, bottom: 20, top: 10),
        ]),
      ),
      body: SafeArea(
        child: VStack([
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorName.background,
            ),
            child: VStack([
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "We've received your order!"
                      .text
                      .size(18)
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .make()
                      .p(10),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Please prepare some money with the"
                      .text
                      .size(14)
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .make()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "information below"
                      .text
                      .size(14)
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .make()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: colorName.scndprimary,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: colorName.primary),
                    ),
                    child: "IDR 8.000"
                        .text
                        .size(16)
                        .bold
                        .fontFamily('nunito')
                        .color(colorName.primary)
                        .make()
                        .pOnly(left: 20, right: 20, top: 5, bottom: 5),
                  )
                ],
              ).p(10),
            ]),
          ).p(20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorName.background,
            ),
            child: VStack([
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Status"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.silver)
                      .make()
                      .pOnly(left: 10, right: 10, top: 10),
                  "Waiting for payment"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.secondary)
                      .make()
                      .pOnly(left: 10, right: 10, top: 10),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Order Number"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.silver)
                      .make()
                      .pOnly(left: 10, right: 10, top: 5),
                  "No.1"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .make()
                      .pOnly(left: 10, right: 10, top: 5),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Date"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.silver)
                      .make()
                      .pOnly(left: 10, right: 10, top: 5, bottom: 10),
                  "13 March 2023. 11.15 WIB"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.grey)
                      .make()
                      .pOnly(left: 10, right: 10, top: 5, bottom: 10),
                ],
              ),
            ]),
          ).pOnly(left: 20, right: 20),
          "Delivery details"
              .text
              .size(18)
              .bold
              .fontFamily('nunitoexb')
              .color(colorName.button)
              .make()
              .p(20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorName.background,
            ),
            child: VStack([
              Row(
                children: [
                  "Lestari Delivery"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make()
                      .p(10),
                ],
              ),
              Row(
                children: [
                  "More than 3km will bes cost IDR 3.000/kg"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.silver)
                      .make()
                      .pOnly(left: 10, right: 10, bottom: 10),
                ],
              ),
            ]),
          ).pOnly(left: 20, right: 20, bottom: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorName.background,
            ),
            child: VStack([
              HStack([
                "Name : "
                    .text
                    .size(14)
                    .bold
                    .fontFamily('nunito')
                    .color(colorName.button)
                    .make(),
                "Vaiz"
                    .text
                    .size(14)
                    .bold
                    .fontFamily('nunito')
                    .color(colorName.primary)
                    .make(),
              ]),
              VxDivider().pOnly(top: 10, bottom: 10),
              HStack([
                "Phone Number : "
                    .text
                    .size(14)
                    .bold
                    .fontFamily('nunito')
                    .color(colorName.button)
                    .make(),
                "+6289866653849"
                    .text
                    .size(14)
                    .bold
                    .fontFamily('nunito')
                    .color(colorName.primary)
                    .make(),
              ]),
              VxDivider().pOnly(top: 10, bottom: 10),
              HStack([
                "Adress : "
                    .text
                    .size(14)
                    .bold
                    .fontFamily('nunito')
                    .color(colorName.button)
                    .make(),
                "Jl. Kemang Timur No.34"
                    .text
                    .size(14)
                    .bold
                    .fontFamily('nunito')
                    .color(colorName.primary)
                    .make(),
              ]),
            ]).pOnly(left: 10, right: 10, top: 20, bottom: 20),
          ).pOnly(left: 20, right: 20).wFull(context),
          "Payment summary"
              .text
              .size(18)
              .fontFamily('nunitoexb')
              .color(colorName.button)
              .make()
              .p(20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorName.background,
            ),
            child: VStack([
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Payment Method"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.silver)
                      .make()
                      .p(10),
                  "COD"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .make()
                      .p(10),
                ],
              ),
              VxDivider().pOnly(left: 10, right: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Total Payment"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make()
                      .p(10),
                  "8.000"
                      .text
                      .size(14)
                      .bold
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .make()
                      .p(10),
                ],
              ),
            ]),
          ).pOnly(left: 20, right: 20, bottom: 20),
        ]),
      ).scrollVertical(),
    );
  }
}
