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
      body: SafeArea(
        child:
            BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
          if (state is ProfileIsLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ProfileIsSuccess)
            return VStack([
              Row(
                children: [
                  10.heightBox,
                  "Hallo, "
                      .richText
                      .size(18)
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .bold
                      .make(),
                  Row(
                    children: [
                      state.data!.username.text
                          .size(18)
                          .fontFamily('nunitoexb')
                          .color(colorName.secondary)
                          .bold
                          .make(),
                    ],
                  ),
                  " !"
                      .richText
                      .size(18)
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .bold
                      .make(),
                ],
              ),
              10.heightBox,
              _buildText(),
              20.heightBox,
              _buildAlamat(context),
              20.heightBox,
              _buildPromo(),
              25.heightBox,
              _buildText1(),
              5.heightBox,
              _buildListProduct(context, state),
            ]).pOnly(left: 20, right: 20);

          return 0.heightBox;
        }),
      ),
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
            "Lestari Laundry Service"
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

  Widget _buildListProduct(BuildContext context, state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: colorName.secondary,
          child: InkWell(
            onTap: () {
              BlocProvider.of<KilogramCubit>(context).fetchKilogram();
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
