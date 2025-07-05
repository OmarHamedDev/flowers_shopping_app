sealed class RegisterState {
  const RegisterState();
}

class RegisterInitial extends RegisterState {
  const RegisterInitial();
}

class RegisterLoading extends RegisterState {
  const RegisterLoading();
}

class RegisterSuccess extends RegisterState {}

class RegisterFailure extends RegisterState {
  final String error;
  const RegisterFailure(this.error);
}
