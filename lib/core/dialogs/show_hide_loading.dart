import '../../flowers_shopping_app.dart';
import '../common/common_imports.dart';
import '../widgets/custom_alert_dialog.dart';

showLoading(BuildContext context, String? message) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return CustomAlertDialog(
        text: message,
      );
    },
  );
}

hideLoading() {
  if (navKey.currentState!.canPop()) {
    Navigator.of(navKey.currentContext!).pop();
  }
}
