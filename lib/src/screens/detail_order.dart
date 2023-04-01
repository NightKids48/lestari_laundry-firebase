part of 'screens.dart';

class DetailOrder extends StatefulWidget {
  const DetailOrder({super.key});

  @override
  State<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
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
      bottomNavigationBar: ColoredBox(
        color: colorName.background,
        child: VStack([
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: HStack([
              'Total items:'
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
              context.goNamed('kgsumary');
            },
          ).pOnly(left: 20, right: 20, bottom: 20, top: 5),
        ]),
      ),
      body: SafeArea(
        child: VStack([]),
      ),
    );
  }
}
