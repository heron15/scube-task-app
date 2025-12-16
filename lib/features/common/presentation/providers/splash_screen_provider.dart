import '/app/exports.dart';

class SplashScreenProvider extends ChangeNotifier {
  final NavigateToLoginUseCase navigateToLoginUseCase;

  SplashScreenProvider({
    required this.navigateToLoginUseCase,
  });

  // Animation Controllers
  AnimationController? _logoController;
  AnimationController? _textController;
  AnimationController? _fadeController;

  // Logo Animations
  Animation<double>? _logoScaleAnimation;
  Animation<double>? _logoRotationAnimation;
  Animation<double>? _logoOpacityAnimation;

  // Text Animations
  Animation<double>? _textSlideAnimation;
  Animation<double>? _textOpacityAnimation;

  // Fade Animation
  Animation<double>? _fadeAnimation;

  // Getters for animations
  Animation<double>? get logoScaleAnimation => _logoScaleAnimation;
  Animation<double>? get logoRotationAnimation => _logoRotationAnimation;
  Animation<double>? get logoOpacityAnimation => _logoOpacityAnimation;
  Animation<double>? get textSlideAnimation => _textSlideAnimation;
  Animation<double>? get textOpacityAnimation => _textOpacityAnimation;
  Animation<double>? get fadeAnimation => _fadeAnimation;

  // State
  bool _isAnimationCompleted = false;
  bool get isAnimationCompleted => _isAnimationCompleted;

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  void initializeAnimations(TickerProvider vsync) {
    _logoController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1200),
    );

    _textController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1000),
    );

    _fadeController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 800),
    );

    _setupLogoAnimations();
    _setupTextAnimations();
    _setupFadeAnimation();

    _isInitialized = true;
    notifyListeners();
  }

  void _setupLogoAnimations() {
    _logoScaleAnimation =
        Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: _logoController!,
            curve: Curves.easeOutBack,
          ),
        );

    _logoRotationAnimation =
        Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: _logoController!,
            curve: Curves.easeOutCubic,
          ),
        );

    _logoOpacityAnimation =
        Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: _logoController!,
            curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
          ),
        );
  }

  void _setupTextAnimations() {
    _textSlideAnimation =
        Tween<double>(
          begin: 50.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: _textController!,
            curve: Curves.easeOutCubic,
          ),
        );

    _textOpacityAnimation =
        Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: _textController!,
            curve: Curves.easeIn,
          ),
        );
  }

  void _setupFadeAnimation() {
    _fadeAnimation =
        Tween<double>(
          begin: 1.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: _fadeController!,
            curve: Curves.easeInOut,
          ),
        );
  }

  Future<void> startAnimations() async {
    if (!_isInitialized) return;

    await _logoController?.forward();

    await Future.delayed(const Duration(milliseconds: 200));
    await _textController?.forward();

    await Future.delayed(const Duration(milliseconds: 600));

    _fadeController?.forward();

    await Future.delayed(const Duration(milliseconds: 600));
  }

  Future<void> initializeSplash(BuildContext context) async {
    await startAnimations();

    _isAnimationCompleted = true;
    notifyListeners();

    if (context.mounted) {
      navigateToLoginUseCase.execute(context);
    }
  }

  /// Get merged animation listenable
  Listenable get animationListenable {
    return Listenable.merge([
      _logoController,
      _textController,
      _fadeController,
    ]);
  }

  @override
  void dispose() {
    _logoController?.dispose();
    _textController?.dispose();
    _fadeController?.dispose();
    super.dispose();
  }
}
