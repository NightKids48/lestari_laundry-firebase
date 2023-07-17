// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lestari_laundry/presentation/pages/home/kilogram/model_data/total_data.dart';
import 'detail_penerima.dart';
import 'layanan_data.dart';

class OrderData {
  TotalData totalData;
  LayananData layananData;
  DetailPenerima? detailPenerima;
  OrderData({
    required this.totalData,
    required this.layananData,
    this.detailPenerima,
  });
}
