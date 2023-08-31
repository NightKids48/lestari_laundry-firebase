import 'package:flutter_bloc/flutter_bloc.dart';
import '../utilities.dart';

class AuthCubit extends Cubit<bool> {
  AuthCubit() : super(false);

  Future<bool> checkToken() async {
    final token = await Commons().getUID();
    print('TOKEN: ${token}');
    if (token != null && token != '') {
      return true;
    } else {
      return false;
      // emit(false);
    }
  }

  void logout() async {
    await Commons().removeUID();
  }
}
