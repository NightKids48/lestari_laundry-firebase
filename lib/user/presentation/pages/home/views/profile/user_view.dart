part of '../../../../screens.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.background,
      appBar: AppBar(
        backgroundColor: colorName.primary,
        elevation: 0,
        title: "Profilku".text.fontFamily('nunitoexb').make().centered(),
      ),
      body: SafeArea(child:
          BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
        if (state is ProfileIsLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProfileIsSuccess) {
          var imageEXT = state.data?.avatar.ext;
          return VStack(
            [
              15.heightBox,
              imageEXT == ".svg"
                  ? SvgPicture.network(
                      BaseConfig.BASE_IMAGE_DOMAIN + state.data!.avatar.url!,
                      fit: BoxFit.cover,
                      height: 100,
                    ).centered()
                  : Image.network(
                      BaseConfig.BASE_IMAGE_DOMAIN + state.data!.avatar.url!,
                      fit: BoxFit.cover,
                      height: 100,
                    ).centered(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  state.data!.fullname.text
                      .color(colorName.button)
                      .size(20)
                      .fontFamily('nunitoexb')
                      .bold
                      .make(),
                ],
              ).pOnly(left: 20, top: 20),
              15.heightBox,
              Container(
                color: colorName.rightone,
                child: VStack([
                  "Informasi Profile"
                      .text
                      .fontFamily('nunitoexb')
                      .size(18)
                      .color(colorName.primary)
                      .make()
                      .pOnly(left: 20, top: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Data Pribadi"
                          .text
                          .fontFamily('nunitoexb')
                          .size(16)
                          .color(colorName.button)
                          .make()
                          .pOnly(left: 20),
                      IconButton(
                        onPressed: () {
                          context.goNamed('profile');
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: colorName.primary,
                        ),
                      )
                    ],
                  ),
                ]),
              ),
              5.heightBox,
              Container(
                color: colorName.rightone,
                child: VStack([
                  "Program Loyalti"
                      .text
                      .fontFamily('nunitoexb')
                      .size(18)
                      .color(colorName.primary)
                      .make()
                      .pOnly(left: 20, top: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Coming soon"
                          .text
                          .fontFamily('nunitoexb')
                          .size(16)
                          .color(colorName.button)
                          .make()
                          .pOnly(left: 20),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: colorName.primary,
                        ),
                      )
                    ],
                  ),
                ]),
              ),
              5.heightBox,
              Container(
                color: colorName.rightone,
                child: VStack([
                  "Riwayat"
                      .text
                      .fontFamily('nunitoexb')
                      .size(18)
                      .color(colorName.primary)
                      .make()
                      .pOnly(left: 20, top: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Riwayat pemesanan"
                          .text
                          .fontFamily('nunitoexb')
                          .size(16)
                          .color(colorName.button)
                          .make()
                          .pOnly(left: 20),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: colorName.primary,
                        ),
                      )
                    ],
                  ),
                ]),
              ),
              5.heightBox,
              Container(
                color: colorName.rightone,
                child: VStack([
                  "Tentang Lestari Laundry"
                      .text
                      .fontFamily('nunitoexb')
                      .size(18)
                      .color(colorName.primary)
                      .make()
                      .pOnly(left: 20, top: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Sejarah kami"
                          .text
                          .fontFamily('nunitoexb')
                          .size(16)
                          .color(colorName.button)
                          .make()
                          .pOnly(left: 20),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: colorName.primary,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "FAQ"
                          .text
                          .fontFamily('nunitoexb')
                          .size(16)
                          .color(colorName.button)
                          .make()
                          .pOnly(left: 20),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: colorName.primary,
                        ),
                      )
                    ],
                  ),
                ]),
              ),
              5.heightBox,
              Container(
                decoration: BoxDecoration(color: colorName.rightone),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.logout_outlined,
                        color: colorName.button,
                      ),
                      title: "Log Out"
                          .text
                          .size(16)
                          .color(colorName.button)
                          .bold
                          .fontFamily('nunitoexb')
                          .make(),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: colorName.primary,
                      ),
                      onTap: () {
                        _displayBottomSheet(context);
                      },
                    ),
                  ],
                ),
              ),
              20.heightBox,
            ],
          );
        }
        return 0.heightBox;
      })).scrollVertical(),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 150,
        child: VStack([
          "Log Out"
              .text
              .fontFamily('nunitoexb')
              .size(18)
              .color(colorName.button)
              .makeCentered()
              .pOnly(top: 10),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: colorName.maroon),
                onPressed: () {},
                child: Text('Tidak'),
              ),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: colorName.maroon),
                onPressed: () {
                  context.read<AuthCubit>().logout();
                  context.goNamed('login');
                },
                child: Text('Oke'),
              )
            ],
          )
        ]),
      ),
    );
  }
}
