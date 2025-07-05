import 'package:flowers_shopping_app/config/di/di.dart';
import 'package:flowers_shopping_app/presentation/mangers/auth/register_viewmodel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common/common_imports.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterViewmodel>(),
      child: const Scaffold(),
    );
  }
}
