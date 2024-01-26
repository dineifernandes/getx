import 'package:barberapp/app/data/model/auth_model.dart';
import 'package:barberapp/app/data/provider/auth_provider.dart';

class AuthRepository {
  final AuthApiClient apiClient = AuthApiClient();

  Future<Auth> login(String username, String password) async {
    return Auth.fromJson(await apiClient.login(username, password));
  }
}
