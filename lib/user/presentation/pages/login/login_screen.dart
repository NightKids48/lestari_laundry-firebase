part of '../../screens.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool validation() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Belum punya akun?"
              .text
              .bold
              .size(16)
              .color(colorName.black)
              .fontFamily('nunito')
              .make(),
          TextButton(
            onPressed: () {
              context.goNamed('location');
            },
            child: "Daftar Disini"
                .text
                .bold
                .size(16)
                .color(colorName.primary)
                .fontFamily('nunito')
                .make(),
          )
        ],
      ).pOnly(bottom: 50),
      body: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, loginState) {
          if (loginState is LoginIsLoading) {
            Center(
              child: CircularProgressIndicator(),
            );
          }
          if (loginState is LoginIsError) {
            Commons().showSnackbarError(
                context, 'Harap masukan data anda dengan benar');
          } else if (loginState is LoginIsSucces) {
            context.goNamed('home');
            Commons().showSnackbarInfo(context, 'Login Berhasil');
          }
        },
        builder: (context, loginState) {
          return SafeArea(
            child: VStack(
              [
                _buildText(context),
                50.heightBox,
                _buildLoginForm(),
              ],
            ),
          );
        },
      ).scrollVertical(),
    );
  }

  Widget _buildText(context) {
    return VStack([
      Row(
        children: [
          "Silahkan Log In"
              .text
              .bold
              .size(30)
              .color(colorName.button)
              .fontFamily('nunito')
              .make(),
        ],
      ),
    ]).wFull(context).expand().pOnly(left: 20, top: 30);
  }

  Widget _buildLoginForm() {
    return VStack([
      HStack([
        "Email / User Name "
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
          hintText: 'Masukan Email atau User Name anda',
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
        controller: passwordController,
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
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              context.goNamed('changepassword');
            },
            child: "Lupa Password ? "
                .text
                .bold
                .size(14)
                .color(colorName.primary)
                .fontFamily('nunito')
                .make(),
          )
        ],
      ).pOnly(right: 20),
      16.heightBox,
      ButtonWidget(
              onPressed: () {
                BlocProvider.of<LoginCubit>(context).btnlogin(
                  LoginRequest(
                    emailController.text,
                    passwordController.text,
                  ),
                );
              },
              text: 'Log In',
              color: colorName.button)
          .p(20),
    ]);
  }
}
