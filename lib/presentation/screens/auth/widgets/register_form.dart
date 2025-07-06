import 'package:flowers_shopping_app/presentation/screens/auth/widgets/second_step_register.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/routes/routes_name.dart';
import '../../../../core/common/common_imports.dart';
import '../../../mangers/auth/register_viewmodel.dart';
import 'custom_progress_bar.dart';
import 'first_step_register.dart';
import 'no_account_row.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = context.read<RegisterViewmodel>();
    return Card(
      elevation: 30,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Create Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF102027),
              ),
            ),
            const SizedBox(height: 10),
            const CustomProgressBar(),
            const SizedBox(height: 10),
            viewModel.currentStep == 0
                ? const FirstStepRegister()
                : const SecondStepRegister(),
            const SizedBox(height: 20),
            NoAccountRow(
              content: 'Already have an account?',
              actionText: 'Login Now',
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, RoutesName.onboardingView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
