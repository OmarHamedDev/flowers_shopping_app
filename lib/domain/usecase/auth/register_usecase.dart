import 'package:flowers_shopping_app/core/common/api/api_result.dart';
import 'package:flowers_shopping_app/domain/entity/app_user.dart';
import 'package:flowers_shopping_app/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUsecase {
  final AuthRepository _authRepository;
  RegisterUsecase(this._authRepository);

  Future<ApiResult<void>> invoke(AppUserEntity user) async {
    return await _authRepository.registerUser(user);
  }
}
