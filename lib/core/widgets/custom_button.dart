import '../common/common_imports.dart';
import '../styles/colors/app_colore.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.backgroundColor = AppColors.secondaryColor,
    required this.text,
  });

  final void Function()? onPressed;
  final Color backgroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Makes button take full width
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
