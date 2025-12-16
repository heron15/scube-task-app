import 'exports.dart';

class ScubeTaskApp extends StatefulWidget {
  const ScubeTaskApp({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<ScubeTaskApp> createState() => _ScubeTaskAppState();
}

class _ScubeTaskAppState extends State<ScubeTaskApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) {
        return MultiProvider(
          providers: ProviderList.providers,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppThemes.appTheme,
            routerDelegate: AppRoutes.router.routerDelegate,
            routeInformationParser: AppRoutes.router.routeInformationParser,
            routeInformationProvider: AppRoutes.router.routeInformationProvider,
          ),
        );
      },
    );
  }
}
