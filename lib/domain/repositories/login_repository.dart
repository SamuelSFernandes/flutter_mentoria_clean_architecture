import 'package:dartz/dartz.dart';

import '../../core/failure/failure.dart';
import '../../data/models/auth_response/auth_response_model.dart';
import '../../data/models/login/login_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, AuthResponseModel>> login(LoginModel auth);
}
