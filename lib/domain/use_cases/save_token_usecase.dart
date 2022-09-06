import 'package:clean_arch_tdd/core/failure/failure.dart';
import 'package:dartz/dartz.dart';

import '../repositories/token_repository.dart';

class SaveTokenUseCase {
  final TokenRepository _repository;
  SaveTokenUseCase(this._repository);

  Future<Either<Failure, bool>> call(String token) async {
    return _repository.saveToken(token);
  }
}
