part of 'screens.dart';

class DetailOrder extends StatefulWidget {
  const DetailOrder({super.key});

  @override
  State<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorName.background,
        elevation: 0,
        iconTheme: IconThemeData(color: colorName.primary),
        title: "Rincian Pesanan"
            .text
            .fontFamily('nunitoexb')
            .color(colorName.button)
            .bold
            .size(18)
            .make(),
      ),
      body: SafeArea(
        child: VStack([
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Order".text.fontFamily('nunitoexb').size(25).make(),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => c.decrement(),
                      icon: Icon(
                        Icons.remove_circle_outline_outlined,
                        color: colorName.maroon,
                      ),
                    ),
                    20.widthBox,
                    Obx(() => "${c.order.toString()}"
                        .text
                        .fontFamily('nunitoexb')
                        .size(25)
                        .make()),
                    20.widthBox,
                    IconButton(
                      onPressed: () => c.increment(),
                      icon: Icon(
                        Icons.add_circle_outline_outlined,
                        color: colorName.maroon,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ).p(20)
        ]),
      ),
    );
  }
}
