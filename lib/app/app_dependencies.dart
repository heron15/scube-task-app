import 'exports.dart';

final getIt = GetIt.instance;

class AppDependencies {
  static Future<void> init() async {
    _registerRepositories();
    _registerUseCases();
    _registerProviders();
  }

  static void _registerRepositories() {
    getIt.registerLazySingleton<ScmRepository>(() => ScmRepositoryImpl());
  }

  static void _registerUseCases() {
    getIt.registerLazySingleton<NavigateToLoginUseCase>(() => NavigateToLoginUseCase());
    getIt.registerLazySingleton<GetSourceDataUseCase>(() => GetSourceDataUseCase(getIt<ScmRepository>()));
    getIt.registerLazySingleton<GetGridDataUseCase>(() => GetGridDataUseCase(getIt<ScmRepository>()));

  }

  static void _registerProviders() {
    getIt.registerLazySingleton<LoginScreenProvider>(() => LoginScreenProvider());
    getIt.registerLazySingleton<ScmScreenProvider>(
      () => ScmScreenProvider(
        getSourceDataUseCase: getIt<GetSourceDataUseCase>(),
        getGridDataUseCase: getIt<GetGridDataUseCase>(),
      ),
    );
    getIt.registerLazySingleton<OptionDetailsScreenProvider>(() => OptionDetailsScreenProvider());
    getIt.registerLazySingleton<SourceDetailsScreenProvider>(() => SourceDetailsScreenProvider());
  }

  static void reset() {
    getIt.reset();
  }
}
