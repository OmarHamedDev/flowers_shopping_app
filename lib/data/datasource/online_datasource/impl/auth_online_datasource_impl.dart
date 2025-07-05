import 'package:flowers_shopping_app/data/api/api_services.dart';
import 'package:flowers_shopping_app/data/dto/auth/app_user_dto.dart';
import 'package:injectable/injectable.dart';

import '../contract/auth_online_datasource.dart';

@Injectable(as: AuthOnlineDataSource)
class AuthOnlineDataSourceImpl implements AuthOnlineDataSource {
  final ApiServices _apiServices;

  AuthOnlineDataSourceImpl(this._apiServices);

  @override
  Future<String?> registerUser(AppUserDTO appUserDTO) async {
    var request = appUserDTO.toRequest();
    var response = await _apiServices.registerUser(request);
    return response.token;
  }
}
