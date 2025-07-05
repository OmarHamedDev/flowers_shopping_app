import '../../api/core/request_models/auth/register_request.dart';

class AppUserDTO {
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? rePassword;
  String? phone;
  String? gender;

  AppUserDTO({
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.rePassword,
    this.phone,
    this.gender,
  });

  factory AppUserDTO.fromJson(Map<String, dynamic> json) => AppUserDTO(
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        password: json['password'],
        rePassword: json['rePassword'],
        phone: json['phone'],
        gender: json['gender'],
      );

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'rePassword': rePassword,
        'phone': phone,
        'gender': gender,
      };
}

extension RegisterRequestMapper on RegisterRequest {
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

extension AppUserDTOToRequestMapper on AppUserDTO {
  RegisterRequest toRequest() {
    return RegisterRequest(
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
