import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'token_local_datasource.dart';

@Injectable(as: TokenDataSource)
class TokenDataSourceImpl implements TokenDataSource {
  final storage = Hive.box("credential");

  @override
  Future<bool> saveToken(String token) async {
    try {
      storage.put("token", token);
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
