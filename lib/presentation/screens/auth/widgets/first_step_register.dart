import 'package:flowers_shopping_app/config/services/validations.dart';
import 'package:flowers_shopping_app/core/widgets/custom_button.dart';
import 'package:flowers_shopping_app/core/widgets/custom_password_feild.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/common_imports.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../mangers/auth/register_viewmodel.dart';

class FirstStepRegister extends StatelessWidget {
  const FirstStepRegister({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = context.watch<RegisterViewmodel>();
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  labelText: 'First Name',
                  hintText: 'Enter Your Name',
                  keyboardType: TextInputType.name,
                  controller: viewModel.firstNameController,
                  validator: (val) => validateName(val!)),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: CustomTextFormField(
                  labelText: 'Last Name',
                  hintText: 'Enter Your Name',
                  keyboardType: TextInputType.name,
                  controller: viewModel.lastNameController,
                  validator: (val) => validateName(val!)),
            ),
          ],
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
            labelText: 'Email',
            hintText: 'Enter Your Email',
            keyboardType: TextInputType.emailAddress,
            controller: viewModel.emailController,
            validator: (val) => validateEmail(val!)),
        const SizedBox(height: 20),
        CustomPasswordField(
            controller: viewModel.passwordController,
            validator: (val) => validatePassword(val!)),
        const SizedBox(height: 20),
        CustomPasswordField(
          controller: viewModel.confirmPasswordController,
          validator: (val) =>
              validateConfirmPassword(val!, viewModel.passwordController.text),
          hintText: 'Confirm Your Password',
          labelText: 'Confirm Password',
        ),
        const SizedBox(height: 20),
        CustomButton(
          text: 'Next',
          onPressed: viewModel.nextStep,
        ),
      ],
    );
    ;
  }
}
