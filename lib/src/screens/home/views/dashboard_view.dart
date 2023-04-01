part of '../../screens.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.background,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: colorName.primary),
        backgroundColor: colorName.background,
        elevation: 0,
        title: Row(children: [
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserIsSuccess) {
                return HStack(
                  [
                    "Hello, "
                        .text
                        .fontFamily('nunito')
                        .color(colorName.black)
                        .size(16)
                        .bold
                        .make(),
                    state.data.username!.text
                        .fontFamily('nunito')
                        .color(colorName.secondary)
                        .size(16)
                        .bold
                        .make(),
                    " ! "
                        .text
                        .fontFamily('nunito')
                        .color(colorName.black)
                        .size(16)
                        .bold
                        .make()
                  ],
                );
              }
              return 0.heightBox;
            },
          ),
        ]),
      ),
      body: SafeArea(
        child: VStack([
          10.heightBox,
          _buildText(),
          10.heightBox,
          //_buildSearch(context),
          20.heightBox,
          _buildAlamat(context),
          20.heightBox,
          _buildPromo(),
          25.heightBox,
          _buildText1(),
          5.heightBox,
          _buildListProduct(),
        ]).pOnly(left: 20, right: 20),
      ).scrollVertical(),
    );
  }

  Widget _buildText() {
    return Column(
      children: [
        Row(
          children: [
            "Selamat Datang "
                .richText
                .size(18)
                .fontFamily('nunitoexb')
                .color(colorName.button)
                .bold
                .make(),
          ],
        ),
        Row(
          children: [
            "di "
                .richText
                .size(18)
                .fontFamily('nunitoexb')
                .color(colorName.button)
                .bold
                .make(),
            "Lestari Laundry!"
                .richText
                .size(18)
                .fontFamily('nunitoexb')
                .bold
                .color(colorName.primary)
                .make(),
          ],
        ),
      ],
    );
  }

  Widget _buildSearch(context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: colorName.background,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: colorName.silver),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search, color: colorName.primary).onTap(
            () {},
          ),
          hintText: 'Search anything',
          hintStyle: const TextStyle(
            color: colorName.silver,
            fontFamily: 'nunito',
          ),
        ),
      ).centered(),
    );
  }

  Widget _buildAlamat(context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: colorName.button,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon:
              const Icon(Icons.location_on, color: colorName.secondary).onTap(
            () {},
          ),
          hintText: 'Jl. Kemang Timur No. 34',
          hintStyle: const TextStyle(
              color: colorName.white,
              fontFamily: 'nunito',
              fontWeight: FontWeight.bold),
        ),
      ).centered(),
    );
  }

  Widget _buildPromo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Image(
          image: AssetImage('images/promo.png'),
          fit: BoxFit.cover,
          height: 140,
        ),
      ],
    );
  }

  Widget _buildText1() {
    return Column(
      children: [
        Row(
          children: [
            "Our services "
                .richText
                .size(18)
                .fontFamily('nunitoexb')
                .color(colorName.button)
                .bold
                .make(),
          ],
        ),
      ],
    );
  }

  Widget _buildListProduct() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: colorName.secondary,
          child: InkWell(
            onTap: () {
              context.goNamed('kilogram');
            },
            splashColor: colorName.primary,
            child: Center(
              child: Column(
                children: const [
                  Image(
                    image: AssetImage('images/kg.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: colorName.secondary,
          child: InkWell(
            onTap: () {
              context.goNamed('satuan');
            },
            splashColor: colorName.primary,
            child: Center(
              child: Column(
                children: const [
                  Image(
                    image: AssetImage('images/piece.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
