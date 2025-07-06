import 'package:flowers_shopping_app/presentation/mangers/auth/register_state.dart';
import 'package:flowers_shopping_app/presentation/mangers/auth/register_viewmodel.dart';
import 'package:flowers_shopping_app/presentation/screens/auth/widgets/register_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../config/routes/routes_name.dart';
import '../../../../core/common/common_imports.dart';

class RegisterViewBodyBlocConsumer extends StatelessWidget {
  const RegisterViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterViewmodel, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          EasyLoading.show(
            status: 'registering',
          );
        } else if (state is RegisterFailure) {
          EasyLoading.dismiss();
          EasyLoading.showError(
            state.error,
          );
        } else if (state is RegisterSuccess) {
          EasyLoading.dismiss();
          EasyLoading.showSuccess(
            'Registration successful',
          );

          Navigator.pushReplacementNamed(context, RoutesName.onboardingView);
        }
      },
      builder: (context, state) {
        return const RegisterViewBody();
      },
    );
  }
}
