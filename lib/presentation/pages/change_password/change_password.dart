part of '../../../src/screens/screens.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final currentPassword = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmation = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
        listener: (context, changePasswordState) {
          if (changePasswordState is ChangePasswordIsFailed) {
            Commons().showSnackbarError(context, changePasswordState.message!);
          } else if (changePasswordState is ChangePasswordIsSuccess) {
            context.goNamed('login');
            Commons().showSnackbarInfo(context, 'Ganti password berhasil');
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
          "Ganti Password"
              .text
              .bold
              .size(30)
              .color(colorName.button)
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
              .color(colorName.button)
              .fontFamily('nunito')
              .make(),
        ],
      )
    ]).wFull(context).expand().pOnly(left: 20, top: 30);
  }

  Widget _buildLoginForm() {
    return VStack([
      TextFormField(
        controller: currentPassword,
        keyboardType: TextInputType.visiblePassword,
        decoration: const InputDecoration(
          hintText: 'Masukan Password Anda',
          hintStyle: TextStyle(
            color: colorName.grey,
            fontFamily: 'nunito',
            fontSize: 15,
          ),
          border: OutlineInputBorder(),
        ),
      ).pOnly(left: 20, right: 20),
      8.heightBox,
      TextFormField(
        controller: passwordController,
        obscureText: true,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Masukan password Baru',
          hintStyle: TextStyle(
            color: colorName.grey,
            fontFamily: 'nunito',
            fontSize: 15,
          ),
        ),
      ).pOnly(left: 20, right: 20),
      8.heightBox,
      TextFormField(
        controller: passwordConfirmation,
        obscureText: true,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Konfirmasi password',
          hintStyle: TextStyle(
            color: colorName.grey,
            fontFamily: 'nunito',
            fontSize: 15,
          ),
        ),
      ).pOnly(left: 20, right: 20),
      16.heightBox,
      ButtonWidget(
              onPressed: () {
                BlocProvider.of<ChangePasswordCubit>(context).btnchangePassword(
                  ChangePasswordRequest(
                    currentPassword.text,
                    passwordController.text,
                    passwordConfirmation.text,
                  ),
                );
              },
              text: 'Ganti Password',
              color: colorName.button)
          .p(20),
    ]);
  }
}
