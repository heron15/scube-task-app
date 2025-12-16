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
    getIt.registerLazySingleton<GetTodayDataUseCase>(() => GetTodayDataUseCase(getIt<ScmRepository>()));
    getIt.registerLazySingleton<GetCustomDateDataUseCase>(() => GetCustomDateDataUseCase(getIt<ScmRepository>()));
    getIt.registerLazySingleton<GetRevenueDataUseCase>(() => GetRevenueDataUseCase(getIt<ScmRepository>()));
  }

  static void _registerProviders() {
    getIt.registerLazySingleton<LoginScreenProvider>(() => LoginScreenProvider());
    getIt.registerLazySingleton<ScmScreenProvider>(
      () => ScmScreenProvider(
        getSourceDataUseCase: getIt<GetSourceDataUseCase>(),
        getGridDataUseCase: getIt<GetGridDataUseCase>(),
        getTodayDataUseCase: getIt<GetTodayDataUseCase>(),
        getCustomDateDataUseCase: getIt<GetCustomDateDataUseCase>(),
      ),
    );
    getIt.registerLazySingleton<OptionDetailsScreenProvider>(() => OptionDetailsScreenProvider());
    getIt.registerLazySingleton<SourceDetailsScreenProvider>(
      () => SourceDetailsScreenProvider(
        getRevenueDataUseCase: getIt<GetRevenueDataUseCase>(),
      ),
    );
  }

  static void reset() {
    getIt.reset();
  }
}
