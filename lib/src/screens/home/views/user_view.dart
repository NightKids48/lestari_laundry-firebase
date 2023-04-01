part of '../../screens.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.layer,
      appBar: AppBar(
        backgroundColor: colorName.primary,
        elevation: 0,
        title: "Profilku".text.fontFamily('nunitoexb').make().centered(),
      ),
      body: SafeArea(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserIsSuccess) {
              return VStack(
                [
                  5.heightBox,
                  ZStack(
                    [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: VxCircle(
                              radius: 50,
                              backgroundImage:
                                  (state.data.photoProfile!.isNotEmpty)
                                      ? DecorationImage(
                                          image: NetworkImage(
                                              state.data.photoProfile!),
                                          fit: BoxFit.cover,
                                        )
                                      : null,
                            ),
                            trailing: const Icon(
                              Icons.mode_edit_outline_outlined,
                              color: colorName.maroon,
                            ),
                            onTap: () {
                              BlocProvider.of<UserBloc>(context)
                                  .add(ChangePhoto());
                            },
                          ).p12(),
                          HStack([
                            state.data.username!.text
                                .fontFamily('nunitoexb')
                                .size(20)
                                .bold
                                .make(),
                          ]).pOnly(left: 20, right: 20),
                          5.heightBox,
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: colorName.background),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: const Icon(
                                    Icons.email_outlined,
                                    color: colorName.maroon,
                                  ),
                                  title: state.data.email!.text
                                      .size(15)
                                      .fontFamily('nunito')
                                      .make(),
                                  trailing: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: colorName.maroon,
                                  ),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: const Icon(
                                    Icons.mobile_friendly_outlined,
                                    color: colorName.maroon,
                                  ),
                                  title: state.data.mobile!.text
                                      .size(15)
                                      .fontFamily('nunito')
                                      .make(),
                                  trailing: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: colorName.maroon,
                                  ),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: const Icon(
                                    Icons.home_outlined,
                                    color: colorName.maroon,
                                  ),
                                  title: "Alamat"
                                      .text
                                      .size(15)
                                      .fontFamily('nunito')
                                      .make(),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: const Icon(
                                    Icons.logout_outlined,
                                    color: colorName.maroon,
                                  ),
                                  title: "Log Out"
                                      .text
                                      .size(15)
                                      .bold
                                      .fontFamily('nunito')
                                      .make(),
                                  trailing: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: colorName.maroon,
                                  ),
                                  onTap: () {
                                    QuickAlert.show(
                                      context: context,
                                      type: QuickAlertType.confirm,
                                      title: 'Ingin melakukan Log Out?',
                                      confirmBtnText: 'Iya',
                                      cancelBtnText: 'Tidak',
                                      cancelBtnTextStyle: TextStyle(
                                        color: colorName.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      confirmBtnColor: colorName.primary,
                                      onConfirmBtnTap: () {
                                        BlocProvider.of<UserBloc>(context)
                                            .add(LogOutUser());
                                        context.go(routeName.login);
                                        Commons().showSnackbarError(
                                            context, "Anda telah Log Out");
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ).p12(),
                        ],
                      )
                    ],
                  )
                ],
              );
            }
            return 0.heightBox;
          },
        ),
      ).scrollVertical(),
    );
  }
}
