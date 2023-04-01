part of 'screens.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Have an account?"
                .text
                .bold
                .size(16)
                .color(colorName.black)
                .fontFamily('nunito')
                .make(),
            TextButton(
              onPressed: () {
                context.goNamed("login");
              },
              child: "Login "
                  .text
                  .bold
                  .size(16)
                  .color(colorName.primary)
                  .fontFamily('nunito')
                  .make(),
            )
          ],
        ).pOnly(bottom: 50),
        body: SafeArea(
          child: BlocListener<RegisterBloc, RegisterState>(
            listener: (context, state) {
              if (state is RegisterIsFailed) {
                Commons().showSnackbarError(
                    context, "Harap lengkapi data diri anda");
              } else if (state is RegisterIsSuccess) {}
            },
            child: VStack(
              [
                _buildText(context),
                25.heightBox,
                _buildRegisterForm(),
              ],
            ),
          ).scrollVertical(),
        ));
  }

  Widget _buildText(context) {
    return VStack([
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Masukan data diri anda"
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

  Widget _buildRegisterForm() {
    return VStack([
      HStack([
        "User Name "
            .text
            .bold
            .size(16)
            .color(colorName.black)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: usernameController,
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
          hintText: 'Masukan User Name Anda',
          hintStyle: TextStyle(
            color: colorName.grey,
            fontFamily: 'nunito',
            fontSize: 15,
          ),
          border: OutlineInputBorder(),
        ),
      ).pOnly(left: 20, right: 20),
      8.heightBox,
      HStack([
        "Email "
            .text
            .bold
            .size(16)
            .color(colorName.black)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          hintText: 'Masukan Email Anda',
          hintStyle: TextStyle(
            color: colorName.grey,
            fontFamily: 'nunito',
            fontSize: 15,
          ),
          border: OutlineInputBorder(),
        ),
      ).pOnly(left: 20, right: 20),
      8.heightBox,
      HStack([
        "Nomor Handphone "
            .text
            .bold
            .size(16)
            .color(colorName.black)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: mobileController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: 'Masukan Nomor Handphone Anda',
          hintStyle: TextStyle(
            color: colorName.grey,
            fontFamily: 'nunito',
            fontSize: 15,
          ),
          border: OutlineInputBorder(),
        ),
      ).pOnly(left: 20, right: 20),
      8.heightBox,
      HStack([
        "Password "
            .text
            .bold
            .size(16)
            .color(colorName.black)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: passController,
        obscureText: true,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Masukan password',
          hintStyle: TextStyle(
            color: colorName.grey,
            fontFamily: 'nunito',
            fontSize: 15,
          ),
        ),
      ).pOnly(left: 20, right: 20),
      50.heightBox,
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
            text: 'DAFTAR',
            color: colorName.button,
          );
        },
      ).pOnly(left: 15, right: 15),
    ]);
  }
}
