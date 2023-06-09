part of '../../../src/screens/screens.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final cityController = TextEditingController();
  final adressDetailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Sudah punya akun?"
              .text
              .bold
              .size(16)
              .color(colorName.black)
              .fontFamily('nunito')
              .make(),
          TextButton(
            onPressed: () {
              context.goNamed('login');
            },
            child: "Login Disini"
                .text
                .bold
                .size(16)
                .color(colorName.primary)
                .fontFamily('nunito')
                .make(),
          )
        ],
      ).pOnly(bottom: 50),
      body: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, registerState) {
          if (registerState is RegisterIsError) {
            Commons().showSnackbarError(context, registerState.message!);
          } else if (registerState is RegisterIsSucces) {
            context.goNamed('login');
            Commons().showSnackbarInfo(context, 'Login Berhasil');
          }
        },
        builder: (context, registerState) {
          return SafeArea(
            child: VStack(
              [
                _buildText(context),
                25.heightBox,
                _buildRegisterForm(),
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
        "User Name"
            .text
            .bold
            .size(16)
            .color(colorName.black)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: firstNameController,
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
          hintText: 'Masukan Nama Depan Anda',
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
        "Nama Belakang "
            .text
            .bold
            .size(16)
            .color(colorName.black)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: lastNameController,
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
          hintText: 'Masukan Nama Belakang Anda',
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
        "Alamat Lengkap"
            .text
            .bold
            .size(16)
            .color(colorName.black)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: adressDetailController,
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
        "Kota "
            .text
            .bold
            .size(16)
            .color(colorName.black)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: cityController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          hintText: 'Masukan Kota Anda',
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
        controller: phoneNumberController,
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
      50.heightBox,
      ButtonWidget(
              onPressed: () {
                BlocProvider.of<RegisterCubit>(context).btnregister(
                  RegisterRequest(
                    phoneNumberController.text,
                    emailController.text,
                    passwordController.text,
                    firstNameController.text,
                    lastNameController.text,
                    cityController.text,
                    adressDetailController.text,
                  ),
                );
              },
              text: 'Register',
              color: colorName.button)
          .p(20),
    ]);
  }
}
