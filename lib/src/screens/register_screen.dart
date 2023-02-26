part of 'screens.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<RegisterBloc, RegisterState>(
          listener: (context, state) {
            if (state is RegisterIsFailed) {
              Commons().showSnackBar(context, state.message);
            } else if (state is RegisterIsSuccess) {}
          },
          child: VStack(
            [
              _buildLogo().pOnly(left: 15),
              _buildText(),
              5.heightBox,
              Container(
                alignment: Alignment.centerRight,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: colorName.primary,
                ),
                child: TextField(
                  controller: usernameController,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person_outline, color: Colors.white),
                    hintText: 'Masukan Nama',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ).wFull(context).pOnly(right: 15, left: 15),
              5.heightBox,
              Container(
                alignment: Alignment.centerRight,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: colorName.primary,
                ),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email_outlined, color: Colors.white),
                    hintText: 'Masukan Email',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ).wFull(context).pOnly(right: 15, left: 15),
              5.heightBox,
              Container(
                alignment: Alignment.centerRight,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: colorName.primary,
                ),
                child: TextField(
                  controller: mobileController,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.mobile_friendly_outlined,
                        color: Colors.white),
                    hintText: 'Masukan No Handphone',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ).wFull(context).pOnly(right: 15, left: 15),
              5.heightBox,
              Container(
                alignment: Alignment.centerRight,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: colorName.primary,
                ),
                child: TextField(
                  controller: passController,
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon:
                        Icon(Icons.lock_outline_rounded, color: Colors.white),
                    hintText: 'Masukan Password',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ).wFull(context).pOnly(right: 15, left: 15),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: "Dengan mendaftar saya menyetujui",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 10),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                ('klik syarat');
                              },
                            text: ' syarat',
                            style: const TextStyle(
                                color: colorName.primary,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    ('klik ketentuan');
                                  },
                                text: ' ketentuan',
                                style: const TextStyle(
                                    color: colorName.primary, fontSize: 11),
                                children: [
                                  TextSpan(
                                    text: ' dan',
                                    style: const TextStyle(
                                        color: colorName.primary, fontSize: 10),
                                    children: [
                                      TextSpan(
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            ('klik privasi');
                                          },
                                        text: ' privasi',
                                        style: const TextStyle(
                                            color: colorName.primary,
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ).pOnly(right: 25, left: 25),
              10.heightBox,
              BlocBuilder<RegisterBloc, RegisterState>(
                builder: (context, state) {
                  return ButtonWidget(
                    onPressed: () {
                      BlocProvider.of<RegisterBloc>(context).add(
                        RegisterUser(
                            username: usernameController.text,
                            mobile: mobileController.text,
                            email: emailController.text,
                            password: passController.text),
                      );
                    },
                    text: 'DAFTAR',
                    color: colorName.button,
                  );
                },
              ).pOnly(left: 15, right: 15),
              25.heightBox,
              "Sudah punya akun?"
                  .richText
                  .size(15)
                  .withTextSpanChildren(
                    [" Masuk Disini".textSpan.size(15).bold.blue500.make()],
                  )
                  .makeCentered()
                  .onTap(
                    () {
                      context.goNamed('login');
                    },
                  )
            ],
          ),
        ).scrollVertical().p16(),
      ),
    );
  }

  Widget _buildLogo() {
    return Column(
      children: const [
        Image(
          image: AssetImage('images/logo.png'),
        )
      ],
    );
  }

  Widget _buildText() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            "Selamat Datang!".richText.size(25).make().onTap(
                  () {},
                ),
          ],
        ).pOnly(right: 25, left: 25, top: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            "Silahkan isi data kamu untuk buat akun"
                .richText
                .size(15)
                .make()
                .onTap(
                  () {},
                ),
          ],
        ).pOnly(right: 50, left: 25, top: 5, bottom: 5),
      ],
    );
  }
}
