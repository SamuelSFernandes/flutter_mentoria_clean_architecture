import 'package:dartz/dartz.dart';

import '../../core/failure/failure.dart';

abstract class TokenRepository {
  Future<Either<Failure, bool>> saveToken(String token);
}
