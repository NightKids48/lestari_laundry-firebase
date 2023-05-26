part of '../screens.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.background,
      bottomNavigationBar: ButtonWidget(
        onPressed: () {
          Get.off(HomeScreen());
        },
        text: 'Continue',
        color: colorName.button,
      ).pOnly(left: 20, right: 20, bottom: 25),
      body: SafeArea(
        child: VStack(
          [
            5.heightBox,
            _buildLogo().pOnly(right: 25, left: 25),
            10.heightBox,
            _buildText(),
            20.heightBox,
            _buildLokasi().pOnly(left: 20, right: 20)
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
            "Do you live around here?"
                .richText
                .size(20)
                .fontFamily('nunito')
                .bold
                .make(),
          ],
        ).pOnly(right: 25, left: 25, top: 10),
      ],
    );
  }

  Widget _buildLokasi() {
    return Container(
      alignment: Alignment.centerRight,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: colorName.layer),
      child: const TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.location_on, color: Colors.blue),
          hintText: 'Jl. Kemang Timur No. 34',
          hintStyle: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
