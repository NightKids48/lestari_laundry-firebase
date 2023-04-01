part of 'screens.dart';

class RegisterName extends StatefulWidget {
  const RegisterName({super.key});

  @override
  State<RegisterName> createState() => _RegisterNameState();
}

class _RegisterNameState extends State<RegisterName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: VStack([_buildText(context), 50.heightBox, _buildLoginForm()]),
      ).scrollVertical(),
    );
  }

  Widget _buildText(context) {
    return VStack([
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Tell us your name"
              .text
              .bold
              .size(20)
              .color(colorName.black)
              .fontFamily('nunito')
              .make(),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Lorem ipsum dolor sit amet "
              .text
              .size(14)
              .color(colorName.black)
              .fontFamily('nunito')
              .make(),
        ],
      )
    ]).wFull(context).expand().pOnly(top: 30);
  }

  Widget _buildLoginForm() {
    return VStack([
      Container(
              height: 45,
              decoration: BoxDecoration(
                color: colorName.layer,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'First Name',
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: 'nunito',
                      color: colorName.silver),
                ),
              ).pOnly(left: 20))
          .pOnly(left: 20, right: 20),
      Container(
              height: 45,
              decoration: BoxDecoration(
                color: colorName.layer,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Last Name',
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: 'nunito',
                      color: colorName.silver),
                ),
              ).pOnly(left: 20))
          .p(20),
      100.heightBox,
      ButtonWidget(
        onPressed: () {},
        text: 'Continue',
        color: colorName.button,
      ).p20(),
    ]);
  }
}
