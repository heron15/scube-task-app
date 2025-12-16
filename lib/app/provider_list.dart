import 'exports.dart';

class ProviderList {
  static List<SingleChildWidget> get providers {
    return [
      ChangeNotifierProvider(
        create: (context) => SplashScreenProvider(navigateToLoginUseCase: getIt<NavigateToLoginUseCase>()),
      ),
      ChangeNotifierProvider.value(value: getIt<LoginScreenProvider>()),
      ChangeNotifierProvider.value(value: getIt<ScmScreenProvider>()),
      ChangeNotifierProvider.value(value: getIt<OptionDetailsScreenProvider>()),
      ChangeNotifierProvider.value(value: getIt<SourceDetailsScreenProvider>()),
    ];
  }
}
