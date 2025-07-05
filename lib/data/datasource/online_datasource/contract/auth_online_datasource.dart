import 'package:flowers_shopping_app/data/dto/auth/app_user_dto.dart';

abstract interface class AuthOnlineDataSource {
  Future<String?> registerUser(AppUserDTO appUserDTO);
}
