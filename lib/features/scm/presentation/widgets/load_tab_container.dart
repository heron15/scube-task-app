import '/app/exports.dart';

class LoadTabContainer extends StatelessWidget {
  const LoadTabContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Center(
        child: Text(
          'Load Content',
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.primaryText,
          ),
        ),
      ),
    );
  }
}
