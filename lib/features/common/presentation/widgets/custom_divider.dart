import '/app/exports.dart';

class CustomDivider extends StatelessWidget {
  final double height;
  const CustomDivider({super.key, this.height = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: height,
      color: AppColors.grey.withAlpha(100),
    );
  }
}
