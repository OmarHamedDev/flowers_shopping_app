// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flowers_shopping_app/config/services/shared_pref/shared_pref_module.dart'
    as _i971;
import 'package:flowers_shopping_app/data/api/api_services.dart' as _i128;
import 'package:flowers_shopping_app/data/api/network_factory.dart' as _i22;
import 'package:flowers_shopping_app/data/datasource/offline_datasource/contract/auth_offline_datasource.dart'
    as _i259;
import 'package:flowers_shopping_app/data/datasource/offline_datasource/impl/auth_offline_datasource_impl.dart'
    as _i132;
import 'package:flowers_shopping_app/data/datasource/online_datasource/contract/auth_online_datasource.dart'
    as _i108;
import 'package:flowers_shopping_app/data/datasource/online_datasource/impl/auth_online_datasource_impl.dart'
    as _i163;
import 'package:flowers_shopping_app/data/repo_impl/auth_repository_impl.dart'
    as _i723;
import 'package:flowers_shopping_app/domain/repository/auth_repository.dart'
    as _i571;
import 'package:flowers_shopping_app/domain/usecase/auth/register_usecase.dart'
    as _i495;
import 'package:flowers_shopping_app/presentation/mangers/auth/register_viewmodel.dart'
    as _i707;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

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
    final dioProvider = _$DioProvider();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPrefModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => sharedPrefModule.secureStorage);
    gh.lazySingleton<_i361.Dio>(() => dioProvider.dioProvider());
    gh.lazySingleton<_i528.PrettyDioLogger>(() => dioProvider.providePretty());
    gh.singleton<_i128.ApiServices>(() => _i128.ApiServices(gh<_i361.Dio>()));
    gh.factory<_i259.AuthOfflineDatasource>(
        () => _i132.AuthOfflineDatasourceImpl());
    gh.factory<_i108.AuthOnlineDataSource>(
        () => _i163.AuthOnlineDataSourceImpl(gh<_i128.ApiServices>()));
    gh.factory<_i571.AuthRepository>(() => _i723.AuthRepositoryImpl(
          gh<_i259.AuthOfflineDatasource>(),
          gh<_i108.AuthOnlineDataSource>(),
        ));
    gh.factory<_i495.RegisterUsecase>(
        () => _i495.RegisterUsecase(gh<_i571.AuthRepository>()));
    gh.factory<_i707.RegisterViewmodel>(
        () => _i707.RegisterViewmodel(gh<_i495.RegisterUsecase>()));
    return this;
  }
}

class _$SharedPrefModule extends _i971.SharedPrefModule {}

class _$DioProvider extends _i22.DioProvider {}
