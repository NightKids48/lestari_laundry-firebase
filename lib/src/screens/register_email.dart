part of 'screens.dart';

class RegisterEmail extends StatefulWidget {
  const RegisterEmail({super.key});

  @override
  State<RegisterEmail> createState() => _RegisterEmailState();
}

class _RegisterEmailState extends State<RegisterEmail> {
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<RegisterBloc, RegisterState>(
          listener: (context, state) {
            if (state is RegisterIsFailed) {
              Commons().showSnackbarError(context, "Harap isi semua data anda");
            } else if (state is RegisterIsSuccess) {
              context.goNamed('login');
              Commons().showSnackbarInfo(context, "Registrasi Sukses");
            }
          },
          child: VStack(
            [
              _buildText(context),
              50.heightBox,
              _buildLoginForm(),
            ],
          ),
        ).scrollVertical(),
      ),
    );
  }

  Widget _buildText(context) {
    return VStack([
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Masukan Data Anda"
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
          border: Border.all(color: colorName.silver),
        ),
        child: TextField(
          controller: usernameController,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
            hintText: "First Name",
            hintStyle: TextStyle(
              color: colorName.silver,
              fontSize: 14,
              fontFamily: 'nunito',
            ),
            border: InputBorder.none,
          ),
        ).centered().pOnly(left: 20),
      ).pOnly(left: 20, right: 20).centered(),
      5.heightBox,
      Container(
        height: 45,
        decoration: BoxDecoration(
          color: colorName.layer,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: colorName.silver),
        ),
        child: TextField(
          controller: mobileController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            hintText: "No Handphone",
            hintStyle: TextStyle(
              color: colorName.silver,
              fontSize: 14,
              fontFamily: 'nunito',
            ),
            border: InputBorder.none,
          ),
        ).centered().pOnly(left: 20),
      ).pOnly(left: 20, right: 20).centered(),
      5.heightBox,
      Container(
        height: 45,
        decoration: BoxDecoration(
          color: colorName.layer,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: colorName.silver),
        ),
        child: TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: "Masukan E-Mail",
            hintStyle: TextStyle(
              color: colorName.silver,
              fontSize: 14,
              fontFamily: 'nunito',
            ),
            border: InputBorder.none,
          ),
        ).centered().pOnly(left: 20),
      ).pOnly(left: 20, right: 20).centered(),
      5.heightBox,
      Container(
        height: 45,
        decoration: BoxDecoration(
          color: colorName.layer,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: colorName.silver),
        ),
        child: TextField(
          controller: passController,
          obscureText: true,
          decoration: const InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(
              color: colorName.silver,
              fontSize: 14,
              fontFamily: 'nunito',
            ),
            border: InputBorder.none,
          ),
        ).centered().pOnly(left: 20),
      ).pOnly(left: 20, right: 20).centered(),
      100.heightBox,
      BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return ButtonWidget(
            onPressed: () {
              BlocProvider.of<RegisterBloc>(context).add(
                RegisterUser(
                  username: usernameController.text,
                  mobile: mobileController.text,
                  email: emailController.text,
                  password: passController.text,
                ),
              );
            },
            text: 'Continue',
            color: colorName.button,
          );
        },
      ).pOnly(left: 15, right: 15),
    ]);
  }
}
