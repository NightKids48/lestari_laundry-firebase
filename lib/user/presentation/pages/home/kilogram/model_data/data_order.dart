import 'package:lestari_laundry/user/presentation/pages/home/kilogram/model_data/total_data.dart';
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
