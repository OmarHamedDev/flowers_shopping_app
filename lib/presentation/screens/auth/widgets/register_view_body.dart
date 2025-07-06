import 'package:flowers_shopping_app/presentation/mangers/auth/register_viewmodel.dart';
import 'package:flowers_shopping_app/presentation/screens/auth/widgets/animated_form.dart';
import 'package:flowers_shopping_app/presentation/screens/auth/widgets/register_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/common_imports.dart';
import 'animated_logo.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<RegisterViewmodel>();

    return SingleChildScrollView(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AnimatedLogo(width: 280, height: 280),
          AnimatedForm(
            child: Form(
              key: viewModel.formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: viewModel.validateColorButton,
              child: const RegisterForm(),
            ),
          ),
        ],
      ),
    );
  }
}
