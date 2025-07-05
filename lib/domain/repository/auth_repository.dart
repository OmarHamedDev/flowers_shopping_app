import 'package:flowers_shopping_app/core/common/api/api_result.dart';
import 'package:flowers_shopping_app/domain/entity/app_user.dart';

abstract interface class AuthRepository {
  Future<ApiResult<void>> registerUser(AppUserEntity user);
}
