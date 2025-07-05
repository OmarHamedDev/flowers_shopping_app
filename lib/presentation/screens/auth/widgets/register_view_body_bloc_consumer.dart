import 'package:flowers_shopping_app/presentation/mangers/auth/register_state.dart';
import 'package:flowers_shopping_app/presentation/mangers/auth/register_viewmodel.dart';
import 'package:flowers_shopping_app/presentation/screens/auth/widgets/register_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/common_imports.dart';

class RegisterViewBodyBlocConsumer extends StatelessWidget {
  const RegisterViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterViewmodel, RegisterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return const RegisterViewBody();
      },
    );
  }
}
