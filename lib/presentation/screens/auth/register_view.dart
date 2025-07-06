import 'package:flowers_shopping_app/config/di/di.dart';
import 'package:flowers_shopping_app/core/styles/images/app_images.dart';
import 'package:flowers_shopping_app/presentation/mangers/auth/register_viewmodel.dart';
import 'package:flowers_shopping_app/presentation/screens/auth/widgets/register_view_body_bloc_consumer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common/common_imports.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterViewmodel>(),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.onboardingBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: const Scaffold(
          backgroundColor: Colors.transparent,
          body: RegisterViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}
