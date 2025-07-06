import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/styles/colors/app_colore.dart';
import '../../../mangers/auth/register_viewmodel.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  void updateSelectedGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = context.watch<RegisterViewmodel>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            viewModel.currentGender = Gender.male;
            updateSelectedGender(Gender.male.name);
          },
          child: Row(
            children: [
              Radio<String>(
                value: Gender.male.name,
                groupValue: selectedGender,
                onChanged: (value) => updateSelectedGender(value!),
                fillColor: WidgetStateProperty.all(AppColors.primaryColor),
                overlayColor: WidgetStateProperty.all(AppColors.primaryColor),
                focusColor: AppColors.primaryColor,
                hoverColor: AppColors.primaryColor,
              ),
              const Text(
                'Male', // Replace with `context.localization.male` if localization is available
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            viewModel.currentGender = Gender.female;
            updateSelectedGender(Gender.female.name);
          },
          child: Row(
            children: [
              Radio<String>(
                value: Gender.female.name,
                groupValue: selectedGender,
                onChanged: (value) => updateSelectedGender(value!),
                fillColor: WidgetStateProperty.all(AppColors.primaryColor),
                overlayColor: WidgetStateProperty.all(AppColors.primaryColor),
                focusColor: AppColors.primaryColor,
                hoverColor: AppColors.primaryColor,
              ),
              const Text(
                'Female',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
