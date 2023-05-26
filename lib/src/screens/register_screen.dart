part of 'screens.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final usernameController = TextEditingController();
  final phonenumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
              Get.off(LoginScreen());
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
      body: SafeArea(
        child: VStack(
          [
            _buildText(context),
            25.heightBox,
            _buildRegisterForm(),
          ],
        ),
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
        controller: phonenumberController,
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
              onPressed: () async {
                try {
                  await FirebaseAuthService().signup(
                      emailController.text.trim(),
                      passwordController.text.trim());

                  if (!mounted) return;

                  Get.off(LoginScreen());
                } on FirebaseException catch (e) {
                  debugPrint("error is ${e.message}");

                  showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      title: Text(
                        "Harap masukan data anda",
                        style: TextStyle(fontFamily: 'nunito'),
                      ),
                    ),
                  );
                }
              },
              text: 'Register',
              color: colorName.button)
          .p(20),
    ]);
  }
}
