import '../../../domain/entity/app_user.dart';
import '../auth/app_user_dto.dart';

extension AppUserDTOMapper on AppUserDTO {
  AppUserEntity toEntity() {
    return AppUserEntity(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      rePassword: rePassword,
      phone: phone,
      gender: gender,
    );
  }
}

extension AppUserEntityMapper on AppUserEntity {
  AppUserDTO toDto() {
    return AppUserDTO(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      rePassword: rePassword,
      phone: phone,
      gender: gender,
    );
  }
}
