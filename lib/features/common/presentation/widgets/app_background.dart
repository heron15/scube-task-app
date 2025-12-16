import '/app/exports.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  final double opacity;
  const AppBackground({super.key, required this.child, this.opacity = 1.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.appBackgroundColor,
      ),
      child: child,
    );
  }
}
