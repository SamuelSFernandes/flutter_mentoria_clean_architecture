import 'package:clean_arch_tdd/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/token_repository.dart';
import '../sources/token/token_local_datasource.dart';

@Injectable(as: TokenRepository)
class TokenRepositoryImpl implements TokenRepository {
  final TokenDataSource _dataSource;

  TokenRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, bool>> saveToken(String token) async {
    try {
      final response = await _dataSource.saveToken(token);
      return right(response);
    } catch (e) {
      return left(ServerFailure(message: 'genericError'));
    }
  }
}
