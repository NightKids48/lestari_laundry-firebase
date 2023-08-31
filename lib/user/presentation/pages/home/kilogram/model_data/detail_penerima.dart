class DetailPenerima {
  String name;
  String phoneNumber;
  String address;
  String adressDetail;
  String pengiriman;
  String instruksiTambahan;
  DetailPenerima({
    required this.name,
    required this.phoneNumber,
    required this.address,
    this.adressDetail = '',
    required this.pengiriman,
    this.instruksiTambahan = '',
  });
}
