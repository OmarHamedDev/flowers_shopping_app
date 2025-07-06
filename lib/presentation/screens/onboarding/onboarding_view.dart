import 'package:flowers_shopping_app/core/widgets/custom_button.dart';
import 'package:flowers_shopping_app/flowers_shopping_app.dart';

import '../../../config/routes/routes_name.dart';
import '../../../core/common/common_imports.dart';
import '../../../core/styles/images/app_images.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.onboardingBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 16),
                Image.asset(
                  AppImages.florenaLogo,
                  width: 290,
                ),
                SizedBox(height: height * 0.1),
                CustomButton(
                  onPressed: () {
                    navKey.currentState!.pushNamed(RoutesName.registerView);
                  },
                  text: 'Continue',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
