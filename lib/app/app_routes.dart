import '/app/exports.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    navigatorKey: ScubeTaskApp.navigatorKey,
    errorBuilder: (context, state) => const ErrorScreen(),
    routes: [
      GoRoute(
        path: '/',
        name: SplashScreen.routeName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const SplashScreen(),
          transitionsBuilder: PageTransitions.fade,
        ),
      ),
      GoRoute(
        path: '/login',
        name: LoginScreen.routeName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
          transitionDuration: const Duration(milliseconds: 600),
          transitionsBuilder: PageTransitions.scaleFromCenter,
        ),
      ),
      GoRoute(
        path: '/scm',
        name: ScmScreen.routeName,
        builder: (context, state) => const ScmScreen(),
      ),
      GoRoute(
        path: '/option-details/:title',
        name: OptionDetailsScreen.routeName,
        builder: (context, state) => OptionDetailsScreen(
          title: state.pathParameters['title'] ?? '',
        ),
      ),
      GoRoute(
        path: '/source-details/:title',
        name: SourceDetailsScreen.routeName,
        builder: (context, state) => SourceDetailsScreen(
          title: state.pathParameters['title'] ?? '',
        ),
      ),
    ],
  );

  static void removePreviousPageAndGo(BuildContext context, String path) {
    while (context.canPop() == true) {
      context.pop();
    }
    context.pushReplacementNamed(path);
  }
}
