import 'package:flowers_shopping_app/config/services/shared_pref/shared_pre_keys.dart';
import 'package:flowers_shopping_app/config/services/shared_pref/shared_pref_helper.dart';
import 'package:flowers_shopping_app/data/datasource/offline_datasource/contract/auth_offline_datasource.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthOfflineDatasource)
class AuthOfflineDatasourceImpl implements AuthOfflineDatasource {
  @override
  Future<void> deleteUserToken() async {
    await SharedPrefHelper.removeSecureString(SharedPrefKeys.userToken);
  }

  @override
  Future<String?> getUserToken() async {
    return await SharedPrefHelper.getSecureString(SharedPrefKeys.userToken);
  }

  @override
  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecureString(SharedPrefKeys.userToken, token);
  }
}
