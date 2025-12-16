import '/app/exports.dart';

void showToast({
  required String message,
  required Color backgroundColor,
  required Color textColor,
}) {
  ScaffoldMessenger.of(ScubeTaskApp.navigatorKey.currentContext!).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(
          color: textColor,
        ),
      ),
      backgroundColor: backgroundColor,
    ),
  );
}
