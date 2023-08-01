part of '../../../../../screens.dart';

class PembayaranScreen extends StatefulWidget {
  const PembayaranScreen({super.key});

  @override
  State<PembayaranScreen> createState() => _PembayaranScreenState();
}

class _PembayaranScreenState extends State<PembayaranScreen> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {
            _displayBottomSheet(context);
          },
          child: Text("Pembayaran"),
        ).centered(),
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 325,
        child: VStack([
          "Status Pembayaran"
              .text
              .fontFamily('nunitoexb')
              .size(18)
              .color(colorName.button)
              .makeCentered()
              .pOnly(top: 10, bottom: 10),
          ListTile(
            title: "Selesai"
                .text
                .fontFamily('nunitoexb')
                .size(16)
                .color(colorName.button)
                .make(),
            trailing: Radio(
                value: 1,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() => selectedValue);
                }),
          ),
          VxDivider().pOnly(left: 10, right: 10),
          ListTile(
            title: "Menunggu Pembayaran"
                .text
                .fontFamily('nunitoexb')
                .size(16)
                .color(colorName.button)
                .make(),
            trailing: Radio(
                value: 2,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() => selectedValue);
                }),
          ),
          VxDivider().pOnly(left: 10, right: 10),
          ListTile(
            title: "Error"
                .text
                .fontFamily('nunitoexb')
                .size(16)
                .color(colorName.button)
                .make(),
            trailing: Radio(
                value: 3,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() => selectedValue);
                }),
          ),
          VxDivider().pOnly(left: 10, right: 10),
          ButtonWidget(
            color: colorName.primary,
            text: 'Terapkan',
            onPressed: () {},
          ).p(20)
        ]),
      ),
    );
  }
}
