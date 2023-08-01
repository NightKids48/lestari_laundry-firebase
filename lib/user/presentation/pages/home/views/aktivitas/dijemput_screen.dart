part of '../../../../screens.dart';

class DijemputScreen extends StatefulWidget {
  const DijemputScreen({super.key});

  @override
  State<DijemputScreen> createState() => _DijemputScreenState();
}

class _DijemputScreenState extends State<DijemputScreen> {
  final OrderController orderController = Get.find<OrderController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      body: SafeArea(
        child: VStack([
          Container(
            decoration: BoxDecoration(
              color: colorName.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: VStack([
                    "No. Order #1".text.fontFamily('nunitoexb').size(16).make(),
                    "${Commons().setPrice(double.parse(orderController.totalData?.totalPrice ?? '0'))}"
                        .text
                        .size(16)
                        .bold
                        .fontFamily('nunitoexb')
                        .color(colorName.primary)
                        .make(),
                    "24 Juli 2023 11.37 WIB"
                        .text
                        .fontFamily('nunito')
                        .color(colorName.grey)
                        .size(12)
                        .make()
                  ]),
                ),
                InkWell(
                  onTap: () {
                    context.goNamed('detailorder');
                  },
                  child: Image(
                    image: AssetImage('images/dijemput.png'),
                  ),
                ),
              ],
            ).p(10),
          ).p(10),
          Container(
            decoration: BoxDecoration(
              color: colorName.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: VStack([
                    "No. Order #1".text.fontFamily('nunitoexb').size(16).make(),
                    "IDR. 18.000"
                        .text
                        .fontFamily('nunitoexb')
                        .color(colorName.primary)
                        .size(16)
                        .make(),
                    "24 Juli 2023 11.37 WIB"
                        .text
                        .fontFamily('nunito')
                        .color(colorName.grey)
                        .size(12)
                        .make()
                  ]),
                ),
                Image(
                  image: AssetImage('images/dijemput.png'),
                ),
              ],
            ).p(10),
          ).p(10),
          Container(
            decoration: BoxDecoration(
              color: colorName.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: VStack([
                    "No. Order #1".text.fontFamily('nunitoexb').size(16).make(),
                    "IDR. 18.000"
                        .text
                        .fontFamily('nunitoexb')
                        .color(colorName.primary)
                        .size(16)
                        .make(),
                    "24 Juli 2023 11.37 WIB"
                        .text
                        .fontFamily('nunito')
                        .color(colorName.grey)
                        .size(12)
                        .make()
                  ]),
                ),
                Image(
                  image: AssetImage('images/dijemput.png'),
                ),
              ],
            ).p(10),
          ).p(10)
        ]),
      ),
    );
  }
}
