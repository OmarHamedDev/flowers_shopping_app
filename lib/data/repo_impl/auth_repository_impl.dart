import 'package:flowers_shopping_app/core/common/api/api_execute.dart';
import 'package:flowers_shopping_app/core/common/api/api_result.dart';
import 'package:flowers_shopping_app/data/datasource/offline_datasource/contract/auth_offline_datasource.dart';
import 'package:flowers_shopping_app/data/datasource/online_datasource/contract/auth_online_datasource.dart';
import 'package:flowers_shopping_app/data/dto/mappers/app_user_mapper.dart';
import 'package:flowers_shopping_app/domain/entity/app_user.dart';
import 'package:flowers_shopping_app/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthOfflineDatasource _authOfflineDatasource;
  final AuthOnlineDataSource _authOnlineDataSource;
  AuthRepositoryImpl(this._authOfflineDatasource, this._authOnlineDataSource);

  @override
  Future<ApiResult<void>> registerUser(AppUserEntity user) async {
    return await executeApi<void>(apiCall: () async {
      var response = await _authOnlineDataSource.registerUser(user.toDto());
      _authOfflineDatasource.saveUserToken(response!);
    });
  }
}
