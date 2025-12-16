
import '/app/exports.dart';

class SpinKitLoading extends StatelessWidget {
  final SpinKitType type;
  final Color color;
  final double size;
  const SpinKitLoading({
    super.key,
    this.type = SpinKitType.circle,
    this.color = AppColors.primary,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case SpinKitType.circle:
        return SpinKitCircle(
          color: color,
          size: size.sp,
        );

      case SpinKitType.fadingCircle:
        return SpinKitFadingCircle(
          color: color,
          size: size.sp,
        );

      case SpinKitType.cubeGrid:
        return SpinKitCubeGrid(
          color: color,
          size: size.sp,
        );

      case SpinKitType.threeBounce:
        return SpinKitThreeBounce(
          color: color,
          size: size.sp,
        );

      case SpinKitType.wave:
        return SpinKitWave(
          color: color,
          size: size.sp,
        );

      case SpinKitType.ripple:
        return SpinKitRipple(
          color: color,
          size: size.sp,
        );
    }
  }
}
