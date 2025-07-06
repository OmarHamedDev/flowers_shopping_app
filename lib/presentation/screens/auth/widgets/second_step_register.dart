import 'package:flowers_shopping_app/config/services/validations.dart';
import 'package:flowers_shopping_app/presentation/screens/auth/widgets/gender_selector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/common_imports.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../mangers/auth/register_viewmodel.dart';

class SecondStepRegister extends StatelessWidget {
  const SecondStepRegister({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = context.watch<RegisterViewmodel>();
    return Column(
      children: [
        CustomTextFormField(
            labelText: 'Phone Number',
            hintText: 'Enter Your Phone',
            keyboardType: TextInputType.phone,
            controller: viewModel.phoneController,
            validator: (val) => validatePhoneNumber(val!)),
        const SizedBox(height: 20),
        const GenderSelector(),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Previous',
                onPressed: viewModel.previousStep,
                backgroundColor: const Color(0xFF102027),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: CustomButton(
                text: 'Register',
                onPressed: viewModel.validate ? viewModel.nextStep : null,
                backgroundColor: viewModel.validate
                    ? const Color(0xFF102027)
                    : const Color(0x0ffb0bc5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
