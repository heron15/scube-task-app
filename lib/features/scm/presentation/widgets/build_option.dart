import '/app/exports.dart';

class BuildOption extends StatelessWidget {
  final String title;
  final bool isSelected;
  const BuildOption({super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        Icon(
          isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
          color: isSelected ? AppColors.primary : AppColors.primaryText,
          size: 16.sp,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: isSelected ? AppColors.primary : AppColors.primaryText,
          ),
        ),
      ],
    );
  }
}
