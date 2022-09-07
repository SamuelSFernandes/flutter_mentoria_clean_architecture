// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repositories/login_repository_impl.dart' as _i8;
import '../../data/repositories/token_repository_impl.dart' as _i12;
import '../../data/sources/login/login_remote_datasource.dart' as _i5;
import '../../data/sources/login/login_remote_datasource_impl.dart' as _i6;
import '../../data/sources/token/token_local_datasource.dart' as _i9;
import '../../data/sources/token/token_local_datasource_impl.dart' as _i10;
import '../../domain/repositories/login_repository.dart' as _i7;
import '../../domain/repositories/token_repository.dart' as _i11;
import '../http_client/http_client.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.HttpClient>(() => _i3.HttpClient(dio: get<_i4.Dio>()));
  gh.factory<_i5.LoginDataSource>(
      () => _i6.LoginDataSourceImpl(get<_i3.HttpClient>()));
  gh.factory<_i7.LoginRepository>(
      () => _i8.LoginRepositoryImpl(get<_i5.LoginDataSource>()));
  gh.factory<_i9.TokenDataSource>(() => _i10.TokenDataSourceImpl());
  gh.factory<_i11.TokenRepository>(
      () => _i12.TokenRepositoryImpl(get<_i9.TokenDataSource>()));
  return get;
}
