part of '../../screens.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  Widget initScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: "Aktivitas"
            .text
            .color(colorName.button)
            .fontFamily('nunitoexb')
            .size(18)
            .makeCentered(),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: colorName.primary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: "Dijemput"
                    .text
                    .color(colorName.white)
                    .size(14)
                    .fontFamily('nunitoexb')
                    .makeCentered(),
              ),
              10.widthBox,
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: colorName.scndprimary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: "Diproses"
                    .text
                    .color(colorName.primary)
                    .size(14)
                    .fontFamily('nunitoexb')
                    .makeCentered(),
              ),
              10.widthBox,
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: colorName.scndprimary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: "Diantar"
                    .text
                    .color(colorName.primary)
                    .size(14)
                    .fontFamily('nunitoexb')
                    .makeCentered(),
              ),
              10.widthBox,
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: colorName.scndprimary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: "Pembayaran"
                    .text
                    .color(colorName.primary)
                    .size(14)
                    .fontFamily('nunitoexb')
                    .makeCentered(),
              )
            ],
          ).scrollHorizontal().p(20),
        ],
      ),
    );
  }
}
