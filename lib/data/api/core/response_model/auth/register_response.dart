import 'package:json_annotation/json_annotation.dart';

import '../core/user_response.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "user")
  final UserResponse? user;
  @JsonKey(name: "token")
  final String? token;

  RegisterResponse({
    this.message,
    this.user,
    this.token,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return _$RegisterResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RegisterResponseToJson(this);
  }
}
