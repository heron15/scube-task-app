import '/app/exports.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = context.read<SplashScreenProvider>();
      provider.initializeAnimations(this);
      provider.initializeSplash(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: _splashScreenBody(),
    );
  }

  Widget _splashScreenBody() {
    return Consumer<SplashScreenProvider>(
      builder: (context, provider, child) {
        if (!provider.isInitialized) {
          return const SizedBox.shrink();
        }

        return AnimatedBuilder(
          animation: provider.animationListenable,
          builder: (context, child) {
            return Opacity(
              opacity: provider.fadeAnimation?.value ?? 1.0,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10.h,
                  children: [
                    _buildAnimatedLogo(provider),
                    _buildAnimatedText(context, provider),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildAnimatedLogo(SplashScreenProvider provider) {
    return Transform.scale(
      scale: provider.logoScaleAnimation?.value ?? 0.0,
      child: Transform.rotate(
        angle: (provider.logoRotationAnimation?.value ?? 0.0) * 0.5,
        child: Opacity(
          opacity: provider.logoOpacityAnimation?.value ?? 0.0,
          child: Image.asset(
            AssetsPath.logo,
            width: 80.w,
            height: 80.h,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedText(BuildContext context, SplashScreenProvider provider) {
    return Transform.translate(
      offset: Offset(provider.textSlideAnimation?.value ?? 50.0, 0),
      child: Opacity(
        opacity: provider.textOpacityAnimation?.value ?? 0.0,
        child: Text(
          'Scube',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontSize: 28.sp,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
