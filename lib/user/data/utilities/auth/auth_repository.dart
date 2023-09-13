import '../utilities.dart';

class AuthRepository {
  Future<bool> hasValidToken() async {
    final String? token = await Commons().getUID();

    return token != null && token.isNotEmpty;
  }

  Future<void> removeToken() async {
    await Commons().removeUID();
  }
}
