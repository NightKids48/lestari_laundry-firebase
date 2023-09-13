part of '../../../screens.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  void initState() {
    super.initState();
    BlocProvider.of<LocationCubit>(context).getLocation();
  }

  final OrderController orderController = Get.put(OrderController());
  String? kelas;
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
                  "Hallo, "
                      .richText
                      .size(18)
                      .fontFamily('nunito')
                      .color(colorName.button)
                      .bold
                      .make(),
                  state.data!.username.text
                      .size(18)
                      .fontFamily('nunitoexb')
                      .color(colorName.secondary)
                      .bold
                      .make(),
                  " !"
                      .richText
                      .size(18)
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .bold
                      .make(),
                ],
              ).pOnly(top: 20),
              10.heightBox,
              _buildText(),
              20.heightBox,
              _buildLokasii(),
              20.heightBox,
              //_buildLokasi(),
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
            "Loksa Laundry!"
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

  Widget _buildLokasi() {
    return Container(
      decoration: BoxDecoration(
        color: colorName.background,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: colorName.greys),
      ),
      child: BlocBuilder<LocationCubit, LocationState>(
        builder: (context, state) {
          if (state is LocationIsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is LocationIsSuccess) {
            return DropdownButton<String?>(
              isExpanded: true,
              value: kelas,
              style: TextStyle(
                color: colorName.button,
                fontFamily: 'nunitoexb',
                fontSize: 13,
              ),
              underline: Container(),
              items: [
                '${state.address}',
              ]
                  .map(
                    (element) => DropdownMenuItem<String?>(
                      child: Text('$element'),
                      value: element,
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(
                  () {
                    if (value != null) {
                      kelas = value;
                    }
                  },
                );
              },
            ).pOnly(left: 10, top: 5, bottom: 5);
          } else if (state is LocationIsError) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return Center(
              child: Container(),
            );
          }
        },
      ),
    );
  }

  Widget _buildLokasii() {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        if (state is LocationIsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is LocationIsSuccess) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorName.button,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on_rounded,
                    color: colorName.secondary,
                  ),
                  title: Column(
                    children: [
                      Row(
                        children: [
                          'Lokasi kamu sekarang'
                              .text
                              .color(colorName.grey)
                              .fontFamily('nunito')
                              .size(15)
                              .make(),
                        ],
                      ),
                      Row(
                        children: [
                          '${state.address}'
                              .text
                              .color(colorName.rightone)
                              .fontFamily('nunitoexb')
                              .size(13)
                              .make(),
                        ],
                      ).scrollHorizontal()
                    ],
                  ),
                ),
              ),
            ],
          );
        } else if (state is LocationIsError) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return Center(
            child: Container(),
          );
        }
      },
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
