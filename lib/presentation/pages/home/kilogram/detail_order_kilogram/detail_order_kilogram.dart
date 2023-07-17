// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../../../../src/screens/screens.dart';

class DetailOrderKilogram extends StatefulWidget {
  DetailOrderKilogram({Key? key}) : super(key: key);

  @override
  State<DetailOrderKilogram> createState() => _DetailOrderKilogramState();
}

class _DetailOrderKilogramState extends State<DetailOrderKilogram> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final addressDetailController = TextEditingController();
  final instruksiTambahanController = TextEditingController();
  final MyController c = Get.put(MyController());
  final OrderController getOrderController = Get.find<OrderController>();
  bool statusSwitch = false;
  String? kelas;
  int _selectedRadio = 0;

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    addressController.dispose();
    addressDetailController.dispose();
    instruksiTambahanController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      bottomNavigationBar: ColoredBox(
        color: colorName.background,
        child: VStack([
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: HStack([
                  'Total items:'
                      .text
                      .fontFamily('nunitoexb')
                      .color(colorName.button)
                      .size(14)
                      .bold
                      .make(),
                  5.widthBox,
                  '1'
                      .text
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .size(14)
                      .bold
                      .make(),
                ]),
              ),
              Container(
                child: HStack([
                  "${Commons().setPrice(double.parse(getOrderController.totalData?.totalPrice ?? '0'))}"
                      .text
                      .fontFamily('nunito')
                      .color(colorName.primary)
                      .size(14)
                      .bold
                      .make()
                ]),
              )
            ],
          ).pOnly(left: 20, right: 20, top: 10),
          ButtonWidget(
            text: 'Continue',
            onPressed: () {
              DetailPenerima newDetailPenerima = DetailPenerima(
                name: nameController.text,
                phoneNumber: phoneController.text,
                address: addressController.text,
                pengiriman: 'pengiriman',
                adressDetail: addressDetailController.text,
                instruksiTambahan: instruksiTambahanController.text,
              );
              Get.put(OrderController()).setDetailPenerima(newDetailPenerima);
              context.goNamed(
                routeName.kgsumary,
              );
            },
          ).pOnly(left: 20, right: 20, bottom: 20, top: 5),
        ]),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: colorName.background,
        title: 'Laundry Kilogram'
            .text
            .fontFamily('nunitoexb')
            .color(colorName.button)
            .bold
            .size(18)
            .makeCentered(),
        actions: [
          Icon(
            Icons.cancel,
            color: colorName.grey,
          ).pOnly(right: 20)
        ],
        iconTheme: const IconThemeData(color: colorName.primary),
      ),
      body: SafeArea(
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state is ProfileIsLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is ProfileIsSuccess) {
              var addres = state.data!.address;
              nameController.text = statusSwitch ? state.data!.username : '';
              phoneController.text =
                  statusSwitch ? state.data!.phoneNumber : '';
              addressController.text = statusSwitch
                  ? addres.id.toString() +
                      addres.city +
                      addres.rt +
                      addres.rw +
                      addres.province
                  : '';
              addressDetailController.text =
                  statusSwitch ? addres.adressDetail : '';
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        'Detail Penerima'
                            .text
                            .size(18)
                            .fontFamily('nunitoexb')
                            .bold
                            .color(colorName.button)
                            .make(),
                      ],
                    ).p(20),
                    Container(
                      decoration: BoxDecoration(
                        color: colorName.background,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              'Pakai informasi saya yang terdaftar'
                                  .text
                                  .size(16)
                                  .fontFamily('nunitoexb')
                                  .bold
                                  .color(colorName.button)
                                  .make(),
                              Switch.adaptive(
                                inactiveThumbColor: colorName.layer,
                                value: statusSwitch,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      statusSwitch = !statusSwitch;
                                    },
                                  );
                                },
                              ),
                            ],
                          )
                              .pOnly(left: 20, right: 20, top: 10, bottom: 5)
                              .scrollHorizontal(),
                          const VxDivider().pOnly(left: 20, right: 20),
                          Row(
                            children: [
                              '*'
                                  .text
                                  .size(15)
                                  .bold
                                  .color(colorName.maroon)
                                  .make(),
                              'Name'
                                  .text
                                  .size(14)
                                  .bold
                                  .fontFamily('nunito')
                                  .color(colorName.button)
                                  .make(),
                            ],
                          ).pOnly(left: 20, top: 10, bottom: 5),
                          TextFormField(
                            enabled: statusSwitch ? false : true,
                            controller: nameController,
                            decoration: const InputDecoration(
                              hintText: 'e.g John Dae',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                  color: colorName.grey, fontSize: 14),
                            ),
                          ).pOnly(left: 20, right: 20),
                          Row(
                            children: [
                              '*'
                                  .text
                                  .size(15)
                                  .bold
                                  .color(colorName.maroon)
                                  .make(),
                              'Phone number'
                                  .text
                                  .size(14)
                                  .fontFamily('nunito')
                                  .bold
                                  .color(colorName.button)
                                  .make(),
                            ],
                          ).pOnly(left: 20, top: 10, bottom: 5),
                          TextFormField(
                            enabled: statusSwitch ? false : true,
                            controller: phoneController,
                            decoration: const InputDecoration(
                              hintText: 'e.g +6287*********',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                  color: colorName.grey, fontSize: 14),
                            ),
                          ).pOnly(left: 20, right: 20),
                          Row(
                            children: [
                              '*'
                                  .text
                                  .size(15)
                                  .bold
                                  .color(colorName.maroon)
                                  .make(),
                              'Address'
                                  .text
                                  .fontFamily('nunito')
                                  .size(14)
                                  .bold
                                  .color(colorName.button)
                                  .make(),
                            ],
                          ).pOnly(left: 20, top: 10, bottom: 5),
                          TextFormField(
                            enabled: statusSwitch ? false : true,
                            controller: addressController,
                            decoration: const InputDecoration(
                              hintText: 'e.g Street name, number',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                  color: colorName.grey, fontSize: 14),
                            ),
                          ).pOnly(left: 20, right: 20),
                          Row(
                            children: [
                              'Address details  '
                                  .text
                                  .size(14)
                                  .fontFamily('nunito')
                                  .bold
                                  .color(colorName.button)
                                  .make(),
                              'Optional'
                                  .text
                                  .size(14)
                                  .fontFamily('nunito')
                                  .bold
                                  .color(colorName.grey)
                                  .make(),
                            ],
                          ).pOnly(left: 20, top: 10, bottom: 5),
                          TextFormField(
                            enabled: statusSwitch ? false : true,
                            controller: addressDetailController,
                            decoration: const InputDecoration(
                              hintText: 'e.g Floor, unit number',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                  color: colorName.grey, fontSize: 14),
                            ),
                          ).pOnly(left: 20, right: 20, bottom: 20),
                        ],
                      ),
                    ).wFull(context).pOnly(left: 20, right: 20),
                    Row(
                      children: [
                        'Pilih pengiriman'
                            .text
                            .size(18)
                            .fontFamily('nunitoexb')
                            .bold
                            .color(colorName.button)
                            .make(),
                      ],
                    ).pOnly(left: 20, right: 20, top: 20),
                    10.heightBox,
                    Container(
                      decoration: BoxDecoration(
                        color: colorName.background,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: colorName.grey),
                      ),
                      child: DropdownButton<String?>(
                        isExpanded: true,
                        value: kelas,
                        style: TextStyle(
                          color: colorName.button,
                          fontFamily: 'nunitoexb',
                          fontSize: 16,
                        ),
                        underline: Container(),
                        items: [
                          'Lestari Delivery',
                          '',
                        ]
                            .map(
                              (element) => DropdownMenuItem<String?>(
                                child: Text('$element'),
                                value: element,
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(
                            () {
                              if (value != null) {
                                kelas = value;
                              }
                            },
                          );
                        },
                      ).pOnly(left: 10, top: 5, bottom: 5),
                    ).pOnly(left: 20, right: 20, bottom: 20),
                    Row(
                      children: [
                        'Instruksi tambahan  '
                            .text
                            .size(18)
                            .fontFamily('nunitoexb')
                            .bold
                            .color(colorName.button)
                            .make(),
                        'Optional'
                            .text
                            .size(18)
                            .fontFamily('nunito')
                            .color(colorName.grey)
                            .make(),
                      ],
                    ).pOnly(left: 20, right: 20),
                    10.heightBox,
                    Container(
                      decoration: BoxDecoration(
                        color: colorName.background,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: colorName.grey),
                      ),
                      child: TextFormField(
                        enabled: statusSwitch ? false : true,
                        controller: instruksiTambahanController,
                        decoration: const InputDecoration(
                          hintText:
                              'e.g Lorem ipsum dolor sit amet consectetur adipiscing elit',
                          hintStyle:
                              TextStyle(color: colorName.grey, fontSize: 13),
                          border: InputBorder.none,
                        ),
                      ).p(10).centered(),
                    ).pOnly(left: 20, right: 20, bottom: 20),
                  ],
                ),
              );
            } else if (state is ProfileIsFailed) {
              return Center(
                child: Text('State Error${state.message}'),
              );
            }
            return Center(
              child: Text('Error'),
            );
          },
        ),
      ),
    );
  }
}
