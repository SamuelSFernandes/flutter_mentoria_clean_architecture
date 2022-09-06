import 'package:clean_arch_tdd/data/models/login/login_model.dart';

import '../../models/auth_response/auth_response_model.dart';

abstract class LoginDataSource {
  Future<AuthResponseModel> login(LoginModel auth);
}
