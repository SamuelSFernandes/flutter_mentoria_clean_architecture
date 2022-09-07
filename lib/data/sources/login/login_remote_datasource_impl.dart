import 'package:clean_arch_tdd/data/models/login/login_model.dart';
import 'package:clean_arch_tdd/data/models/user/user_model.dart';
import 'package:injectable/injectable.dart';

import '../../../core/http_client/http_client.dart';
import '../../models/auth_response/auth_response_model.dart';
import 'login_remote_datasource.dart';

@Injectable(as: LoginDataSource)
class LoginDataSourceImpl implements LoginDataSource {
  final HttpClient _http;
  LoginDataSourceImpl(this._http);

  @override
  Future<AuthResponseModel> login(LoginModel auth) async {
    try {
      final response = await _http.get('');

      final user = UserModel.fromJson(response.data["user"]);
      final token = response.data["token"];
      return AuthResponseModel(userModel: user, token: token);
    } catch (e) {
      rethrow;
    }
  }
}
