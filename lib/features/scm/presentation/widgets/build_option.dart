import '/app/exports.dart';

class BuildOption extends StatelessWidget {
  final String title;
  final bool isSelected;
  final double size;
  const BuildOption({
    super.key,
    required this.title,
    required this.isSelected,
    this.size = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        Icon(
          isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
          color: isSelected ? AppColors.primary : AppColors.primaryText,
          size: size.sp,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: size.sp,
            fontWeight: FontWeight.w400,
            color: isSelected ? AppColors.primary : AppColors.primaryText,
          ),
        ),
      ],
    );
  }
}
