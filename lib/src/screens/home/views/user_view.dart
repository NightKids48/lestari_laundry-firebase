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
            child: VStack(
          [
            5.heightBox,
            Image(
              image: AssetImage('images/profil.png'),
            ).centered(),
            5.heightBox,
            ZStack(
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    5.heightBox,
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colorName.background),
                      child: Column(
                        children: [
                          VStack([
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
                                    .size(14)
                                    .color(colorName.button)
                                    .make()
                                    .pOnly(left: 20),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: colorName.grey,
                                  ),
                                )
                              ],
                            ),
                          ]),
                          10.heightBox,
                          VStack([
                            "Program Loyalti"
                                .text
                                .fontFamily('nunitoexb')
                                .size(18)
                                .color(colorName.primary)
                                .make()
                                .pOnly(left: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "Coming soon"
                                    .text
                                    .fontFamily('nunitoexb')
                                    .size(14)
                                    .color(colorName.button)
                                    .make()
                                    .pOnly(left: 20),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: colorName.grey,
                                  ),
                                )
                              ],
                            ),
                          ]),
                          10.heightBox,
                          VStack([
                            "Riwayat"
                                .text
                                .fontFamily('nunitoexb')
                                .size(18)
                                .color(colorName.primary)
                                .make()
                                .pOnly(left: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "Riwayat pemesanan"
                                    .text
                                    .fontFamily('nunitoexb')
                                    .size(14)
                                    .color(colorName.button)
                                    .make()
                                    .pOnly(left: 20),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: colorName.grey,
                                  ),
                                )
                              ],
                            ),
                          ]),
                          10.heightBox,
                          VStack([
                            "Tentang Lestari Laundry"
                                .text
                                .fontFamily('nunitoexb')
                                .size(18)
                                .color(colorName.primary)
                                .make()
                                .pOnly(left: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "Sejarah kami"
                                    .text
                                    .fontFamily('nunitoexb')
                                    .size(14)
                                    .color(colorName.button)
                                    .make()
                                    .pOnly(left: 20),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: colorName.grey,
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
                                    .size(14)
                                    .color(colorName.button)
                                    .make()
                                    .pOnly(left: 20),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: colorName.grey,
                                  ),
                                )
                              ],
                            ),
                          ]),
                          25.heightBox,
                          ListTile(
                            leading: const Icon(
                              Icons.logout_outlined,
                              color: colorName.button,
                            ),
                            title: "Log Out"
                                .text
                                .size(15)
                                .bold
                                .fontFamily('nunito')
                                .make(),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: colorName.grey,
                            ),
                            onTap: () {
                              FirebaseAuth.instance.signOut();
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
        )));
  }
}
