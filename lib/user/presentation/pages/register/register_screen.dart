part of '../../screens.dart';

class RegisterScreen extends StatefulWidget {
  final String lat;
  final String long;
  final String city;
  final String province;
  final String zipcode;
  const RegisterScreen({
    Key? key,
    required this.lat,
    required this.long,
    required this.city,
    required this.province,
    required this.zipcode,
  }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final userNameController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final rtController = TextEditingController();
  final rwController = TextEditingController();
  final passwordController = TextEditingController();
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
              .fontFamily('nunitoexb')
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
                .fontFamily('nunitoexb')
                .make(),
          )
        ],
      ).pOnly(bottom: 50),
      body: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, registerState) {
          if (registerState is RegisterIsError) {
            Commons().showSnackbarError(
                context, 'Harap masukan data anda dengan benar');
          } else if (registerState is RegisterIsSucces) {
            context.goNamed('login');
            Commons().showSnackbarInfo(context, registerState.message!);
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
              .color(colorName.button)
              .fontFamily('nunitoexb')
              .make(),
        ],
      ),
    ]).wFull(context).expand().pOnly(top: 30);
  }

  Widget _buildRegisterForm() {
    return VStack([
      HStack([
        "User Name"
            .text
            .bold
            .size(16)
            .color(colorName.button)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: userNameController,
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
          hintText: 'Masukan User Name',
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
        "Nama Depan "
            .text
            .bold
            .size(16)
            .color(colorName.button)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: firstNameController,
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
          hintText: 'Masukan Nama Depan anda',
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
            .color(colorName.button)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: lastNameController,
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
          hintText: 'Masukan Nama Belakang anda',
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
        "Nomer Handphone"
            .text
            .bold
            .size(16)
            .color(colorName.button)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: phoneNumberController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: 'Masukan nomer handphone anda',
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
            .color(colorName.button)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          hintText: 'Masukan email anda',
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
        "RT "
            .text
            .bold
            .size(16)
            .color(colorName.button)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: rtController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: 'Masukan nomer RT',
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
        "RW "
            .text
            .bold
            .size(16)
            .color(colorName.button)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: rwController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: 'Masukan nomer RW',
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
        "Alamat Detail "
            .text
            .bold
            .size(16)
            .color(colorName.button)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      TextFormField(
        controller: adressDetailController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Masukan alamat detail anda',
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
        "Password"
            .text
            .bold
            .size(16)
            .color(colorName.button)
            .fontFamily('nunito')
            .make(),
      ]).pOnly(left: 20),
      8.heightBox,
      TextFormField(
        controller: passwordController,
        obscureText: true,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Masukan password anda',
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
          BlocProvider.of<RegisterCubit>(context).btnregister(RegisterRequest(
            userNameController.text,
            phoneNumberController.text,
            emailController.text,
            passwordController.text,
            '',
            RegisterRequestAddress('', ''),
            RegisterName(firstNameController.text, lastNameController.text),
            RegisterAdress(
              rtController.text,
              rwController.text,
              widget.city,
              widget.province,
              widget.zipcode,
              adressDetailController.text,
              RegisterAdressCoordinates('', ''),
            ),
          ));
        },
        text: 'Register',
        color: colorName.button,
      ).p(20),
    ]);
  }
}
