import 'package:clean_arch_tdd/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/login_repository.dart';
import '../models/auth_response/auth_response_model.dart';
import '../models/login/login_model.dart';
import '../sources/login/login_remote_datasource.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource _dataSource;

  LoginRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, AuthResponseModel>> login(LoginModel auth) async {
    try {
      final response = await _dataSource.login(auth);
      return right(response);
    } catch (e) {
      return left(ServerFailure(message: 'genericError'));
    }
  }
}
