
import '/app/exports.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.simmerBgColor,
      highlightColor: AppColors.simmerItemColor,
      child: child,
    );
  }
}
