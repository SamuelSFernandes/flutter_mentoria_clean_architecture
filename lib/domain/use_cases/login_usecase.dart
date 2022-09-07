import 'package:clean_arch_tdd/core/failure/failure.dart';
import 'package:clean_arch_tdd/domain/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';

import '../../data/models/auth_response/auth_response_model.dart';
import '../../data/models/login/login_model.dart';

class LoginUseCase {
  final LoginRepository _repository;
  LoginUseCase(this._repository);

  Future<Either<Failure, AuthResponseModel>> call(LoginModel auth) async {
    return _repository.login(auth);
  }
}
