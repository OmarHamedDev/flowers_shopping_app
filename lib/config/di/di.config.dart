// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../data/api/api_services.dart' as _i838;
import '../../data/datasource/offline_datasource/contract/auth_offline_datasource.dart'
    as _i517;
import '../../data/datasource/offline_datasource/impl/auth_offline_datasource_impl.dart'
    as _i789;
import '../../data/datasource/online_datasource/contract/auth_online_datasource.dart'
    as _i731;
import '../../data/datasource/online_datasource/impl/auth_online_datasource_impl.dart'
    as _i1005;
import '../../data/repo_impl/auth_repository_impl.dart' as _i370;
import '../../domain/repository/auth_repository.dart' as _i614;
import '../../domain/usecase/auth/register_usecase.dart' as _i281;
import '../../presentation/mangers/auth/register_viewmodel.dart' as _i12;
import '../services/shared_pref/shared_pref_module.dart' as _i509;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPrefModule = _$SharedPrefModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPrefModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => sharedPrefModule.secureStorage);
    gh.factory<_i838.ApiServices>(() => _i838.ApiServices(gh<_i361.Dio>()));
    gh.factory<_i517.AuthOfflineDatasource>(
        () => _i789.AuthOfflineDatasourceImpl());
    gh.factory<_i731.AuthOnlineDataSource>(
        () => _i1005.AuthOnlineDataSourceImpl(gh<_i838.ApiServices>()));
    gh.factory<_i614.AuthRepository>(() => _i370.AuthRepositoryImpl(
          gh<_i517.AuthOfflineDatasource>(),
          gh<_i731.AuthOnlineDataSource>(),
        ));
    gh.factory<_i281.RegisterUsecase>(
        () => _i281.RegisterUsecase(gh<_i614.AuthRepository>()));
    gh.factory<_i12.RegisterViewmodel>(
        () => _i12.RegisterViewmodel(gh<_i281.RegisterUsecase>()));
    return this;
  }
}

class _$SharedPrefModule extends _i509.SharedPrefModule {}
