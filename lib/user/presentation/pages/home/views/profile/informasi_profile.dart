part of '../../../../screens.dart';

class InformasiProfile extends StatelessWidget {
  const InformasiProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorName.background,
        iconTheme: IconThemeData(color: colorName.primary),
        title: "Informasi Profile"
            .text
            .size(18)
            .fontFamily('nunitoexb')
            .color(colorName.button)
            .make()
            .centered(),
        actions: [
          "Edit"
              .text
              .fontFamily('nunitoexb')
              .size(16)
              .color(colorName.primary)
              .make()
              .p(20),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: colorName.background,
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              if (state is ProfileIsLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is ProfileIsSuccess) {
                return VStack(
                  [
                    Row(
                      children: [
                        "Data Pribadi"
                            .text
                            .color(colorName.button)
                            .size(18)
                            .fontFamily('nunitoexb')
                            .make(),
                      ],
                    ).p(20),
                    VStack([
                      Row(
                        children: [
                          "User Name"
                              .text
                              .color(colorName.button)
                              .size(16)
                              .fontFamily('nunitoexb')
                              .make(),
                        ],
                      ).pOnly(left: 20),
                      Row(
                        children: [
                          state.data!.username.text
                              .color(colorName.primary)
                              .size(14)
                              .bold
                              .fontFamily('nunito')
                              .make(),
                        ],
                      ).pOnly(left: 20),
                    ]),
                    VxDivider().pOnly(left: 20, right: 20, top: 10, bottom: 10),
                    VStack([
                      Row(
                        children: [
                          "Email"
                              .text
                              .color(colorName.button)
                              .size(16)
                              .fontFamily('nunitoexb')
                              .make(),
                        ],
                      ).pOnly(left: 20),
                      Row(
                        children: [
                          state.data!.email.text
                              .color(colorName.primary)
                              .size(14)
                              .fontFamily('nunito')
                              .bold
                              .make(),
                        ],
                      ).pOnly(left: 20),
                    ]),
                    VxDivider().pOnly(left: 20, right: 20, top: 10, bottom: 10),
                    VStack([
                      Row(
                        children: [
                          "No Handphone"
                              .text
                              .color(colorName.button)
                              .size(16)
                              .fontFamily('nunitoexb')
                              .make(),
                        ],
                      ).pOnly(left: 20),
                      Row(
                        children: [
                          state.data!.phoneNumber.text
                              .color(colorName.primary)
                              .size(14)
                              .fontFamily('nunito')
                              .bold
                              .make(),
                        ],
                      ).pOnly(left: 20),
                    ]),
                    VxDivider().pOnly(left: 20, right: 20, top: 10, bottom: 10),
                    VStack([
                      Row(
                        children: [
                          "Alamat"
                              .text
                              .color(colorName.button)
                              .size(16)
                              .fontFamily('nunitoexb')
                              .make(),
                        ],
                      ).pOnly(left: 20),
                      Row(
                        children: [
                          state.data!.address.adressDetail.text
                              .color(colorName.primary)
                              .size(14)
                              .fontFamily('nunito')
                              .bold
                              .make(),
                        ],
                      ).pOnly(left: 20, bottom: 20),
                    ]),
                  ],
                  crossAlignment: CrossAxisAlignment.center,
                ).wFull(context);
              }
              return 0.heightBox;
            },
          ).scrollVertical(),
        ).pOnly(top: 20).hFull(context),
      ),
    );
  }
}

Widget _buildProfile(BuildContext context, state) {
  return Container(
    decoration: BoxDecoration(color: colorName.background),
    child: Column(
      children: [
        Row(
          children: [
            "Data Pribadi"
                .text
                .color(colorName.button)
                .size(18)
                .fontFamily('nunitoexb')
                .make(),
          ],
        ).p(20),
        VStack([
          Row(
            children: [],
          ).pOnly(left: 20),
        ]),
        VxDivider().pOnly(left: 20, right: 20, top: 10, bottom: 10),
        VxDivider().pOnly(left: 20, right: 20, top: 10, bottom: 10),
      ],
    ),
  ).wFull(context).pOnly(top: 10);
}
