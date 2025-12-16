import '/app/exports.dart';

class NavigateToLoginUseCase {
  void execute(BuildContext context) {
    if (context.mounted) {
      context.pushReplacementNamed(LoginScreen.routeName);
    }
  }
}
