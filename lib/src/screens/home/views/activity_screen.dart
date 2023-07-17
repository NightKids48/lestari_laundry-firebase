part of '../../screens.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorName.background,
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
          TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: colorName.primary,
            ),
            controller: tabController,
            isScrollable: true,
            unselectedLabelColor: colorName.maroon,
            tabs: [
              "Dijemput"
                  .text
                  .color(colorName.button)
                  .fontFamily('nunitoexb')
                  .size(15)
                  .makeCentered()
                  .p(10),
              "Diproses"
                  .text
                  .color(colorName.button)
                  .fontFamily('nunitoexb')
                  .size(15)
                  .makeCentered()
                  .p(10),
              "Diantar"
                  .text
                  .color(colorName.button)
                  .fontFamily('nunitoexb')
                  .size(15)
                  .makeCentered()
                  .p(10),
              "Pembayaran"
                  .text
                  .color(colorName.button)
                  .fontFamily('nunitoexb')
                  .size(15)
                  .makeCentered()
                  .p(10),
            ],
          ).p(10),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Page1(),
                Page2(),
                Page3(),
                DashboardView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
