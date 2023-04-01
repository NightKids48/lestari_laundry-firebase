part of 'screens.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Don't have an account?"
              .text
              .bold
              .size(16)
              .color(colorName.black)
              .fontFamily('nunito')
              .make(),
          TextButton(
            onPressed: () {
              context.goNamed("register");
            },
            child: "Register "
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
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginIsFailed) {
              Commons()
                  .showSnackbarError(context, "No HP atau Password anda salah");
            } else if (state is LoginIsSuccess) {
              context.goNamed('location');
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
        children: [
          "Let's Get Started"
              .text
              .bold
              .size(30)
              .color(colorName.black)
              .fontFamily('nunito')
              .make(),
        ],
      ),
      Row(
        children: [
          "Lorem ipsum dolor sit amet "
              .text
              .bold
              .size(16)
              .color(colorName.black)
              .fontFamily('nunito')
              .make(),
        ],
      )
    ]).wFull(context).expand().pOnly(left: 20, top: 30);
  }

  Widget _buildLoginForm() {
    return VStack([
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
          )).pOnly(left: 20, right: 20),
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
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {},
            child: "Forgot Password "
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
      BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginIsLoading) {
            return CircularProgressIndicator();
          }
          return ButtonWidget(
            onPressed: () {
              BlocProvider.of<LoginBloc>(context).add(
                LoginUser(
                  email: emailController.text,
                  password: passController.text,
                ),
              );
            },
            text: 'Log In',
            color: colorName.button,
          ).wFull(context);
        },
      ).wFull(context).pOnly(right: 35, left: 35, top: 35),
    ]);
  }
}
