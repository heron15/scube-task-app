import '/app/exports.dart';

class RevenueListItem extends StatelessWidget {
  final RevenueDataItem revenueDataItem;
  final int index;
  const RevenueListItem({
    super.key,
    required this.revenueDataItem,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTwoRichText(
            firstText: "Data ${index + 1}  : ",
            secondText: revenueDataItem.data,
            firstTextColor: AppColors.secondaryText,
            secondTextColor: AppColors.primaryText,
            firstTextSize: 14.sp,
            secondTextSize: 14.sp,
            firstTextFontWeight: FontWeight.w400,
            secondTextFontWeight: FontWeight.w600,
          ),
          SizedBox(height: 2.h),
          CustomTwoRichText(
            firstText: "Cost ${index + 1}  : ",
            secondText: revenueDataItem.cost,
            firstTextColor: AppColors.secondaryText,
            secondTextColor: AppColors.primaryText,
            firstTextSize: 14.sp,
            secondTextSize: 14.sp,
            firstTextFontWeight: FontWeight.w400,
            secondTextFontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
