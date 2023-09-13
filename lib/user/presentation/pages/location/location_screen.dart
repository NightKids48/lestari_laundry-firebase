part of '../../screens.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  void initState() {
    super.initState();
    BlocProvider.of<LocationCubit>(context).getLocation();
  }

  String _lat = '';
  String _long = '';
  String _address = '';
  String _city = '';
  String _province = '';
  String _zipcode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.background,
      body: SafeArea(
        child: VStack(
          [
            5.heightBox,
            _buildLogo().pOnly(right: 25, left: 25),
            10.heightBox,
            _buildText(),
            20.heightBox,
            _buildLokasi()
          ],
        ),
      ).scrollVertical().p16(),
    );
  }

  Widget _buildLogo() {
    return Column(
      children: const [
        Image(
          image: AssetImage('images/logo1.png'),
        )
      ],
    );
  }

  Widget _buildText() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Lokasi kamu saat ini"
                .richText
                .size(20)
                .fontFamily('nunitoexb')
                .color(colorName.button)
                .bold
                .make(),
          ],
        ).pOnly(right: 25, left: 25, top: 10),
      ],
    );
  }

  Widget _buildLokasi() {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        if (state is LocationIsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is LocationIsSuccess) {
          return Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: colorName.layer),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on_rounded,
                    color: colorName.primary,
                  ),
                  title: Column(
                    children: [
                      Row(
                        children: [
                          '${state.address}'
                              .text
                              .color(colorName.button)
                              .fontFamily('nunitoexb')
                              .size(16)
                              .make(),
                        ],
                      ).scrollHorizontal(),
                    ],
                  ),
                ),
              ),
              50.heightBox,
              ButtonWidget(
                onPressed: () {
                  setState(
                    () {
                      _lat = state.latitude.toString();
                      _long = state.longitude.toString();
                      _address = state.address.toString();
                      _city = state.city.toString();
                      _province = state.province.toString();
                      _zipcode = state.zipcode.toString();
                    },
                  );
                  context.goNamed(
                    'register',
                    extra: {
                      'lat': _lat,
                      'long': _long,
                      'address': _address,
                      'city': _city,
                      'province': _province,
                      'zipcode': _zipcode,
                    },
                  );
                },
                text: 'Lanjutkan',
                color: colorName.button,
              ).pOnly(
                left: 10,
                right: 10,
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
}
