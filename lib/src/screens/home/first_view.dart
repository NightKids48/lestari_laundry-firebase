part of '../screens.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

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
            _buildLokasi(),
            120.heightBox,
            ButtonWidget(
              onPressed: () {},
              text: 'Continue',
              color: colorName.button,
            ).pOnly(left: 15, right: 15),
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
            "Do you live around here?".richText.size(25).make(),
          ],
        ).pOnly(right: 25, left: 25, top: 10),
      ],
    );
  }

  Widget _buildLokasi() {
    return Container(
      alignment: Alignment.centerRight,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 218, 226, 231),
      ),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.location_on, color: Colors.blue),
          hintText: '',
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
