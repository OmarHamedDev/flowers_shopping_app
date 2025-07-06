import 'package:bloc/bloc.dart';
import 'package:flowers_shopping_app/core/common/api/api_result.dart';
import 'package:flowers_shopping_app/core/common/common_imports.dart';
import 'package:flowers_shopping_app/data/api/core/error/error_handler.dart';
import 'package:flowers_shopping_app/domain/entity/app_user.dart';
import 'package:flowers_shopping_app/domain/usecase/auth/register_usecase.dart';
import 'package:flowers_shopping_app/presentation/mangers/auth/register_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterViewmodel extends Cubit<RegisterState> {
  final RegisterUsecase _registerUsecase;
  RegisterViewmodel(this._registerUsecase) : super(const RegisterInitial());
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool validate = false;
  int currentStep = 0;
  Gender currentGender = Gender.male;
  Future<void> _registerUser() async {
    emit(const RegisterLoading());
    AppUserEntity appUser = AppUserEntity(
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      email: emailController.text,
      password: passwordController.text,
      phone: phoneController.text,
    );
    final result = await _registerUsecase.invoke(appUser);
    switch (result) {
      case Success<void>():
        emit(RegisterSuccess());
        break;
      case Failures<void>():
        var error = ErrorHandler.fromException(result.exception);
        emit(RegisterFailure(error.errorMessage));
    }
  }

  void validateColorButton() {
    if (firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty ||
        phoneController.text.isEmpty) {
      validate = false;
    } else if (formKey.currentState == null ||
        !formKey.currentState!.validate()) {
      validate = false;
    } else {
      validate = true;
    }
    emit(const ValidateColorButtonState());
  }

  void nextStep() {
    if (currentStep < 1) {
      currentStep++;
      emit(const ValidateColorButtonState());
    } else {
      _registerUser();
    }
  }

  void previousStep() {
    if (currentStep > 0) {
      currentStep--;
      emit(const ValidateColorButtonState());
    }
  }
}

enum Gender {
  male,
  female,
}
