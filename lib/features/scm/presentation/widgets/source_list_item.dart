import '/app/exports.dart';

class SourceListItem extends StatelessWidget {
  final SourceItem sourceItem;

  const SourceListItem({
    super.key,
    required this.sourceItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          SourceDetailsScreen.routeName,
          pathParameters: {
            'title': sourceItem.title,
          },
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: AppColors.primaryText,
            width: 1.w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              sourceItem.icon,
              width: 24.w,
              height: 24.h,
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.square,
                      size: 16.sp,
                      color: sourceItem.color,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      sourceItem.title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Text(
                      sourceItem.isActive ? '(Active)' : '(Inactive)',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: sourceItem.isActive ? AppColors.blue : AppColors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                CustomTwoRichText(
                  firstText: "Data 1    : ",
                  secondText: sourceItem.data1.toStringAsFixed(2),
                  firstTextColor: AppColors.secondaryText,
                  secondTextColor: AppColors.primaryText,
                  firstTextSize: 12.sp,
                  secondTextSize: 12.sp,
                  firstTextFontWeight: FontWeight.w400,
                  secondTextFontWeight: FontWeight.w500,
                ),
                SizedBox(height: 5.h),
                CustomTwoRichText(
                  firstText: "Data 2    : ",
                  secondText: sourceItem.data2.toStringAsFixed(2),
                  firstTextColor: AppColors.secondaryText,
                  secondTextColor: AppColors.primaryText,
                  firstTextSize: 12.sp,
                  secondTextSize: 12.sp,
                  firstTextFontWeight: FontWeight.w400,
                  secondTextFontWeight: FontWeight.w500,
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 18.sp,
              color: AppColors.primaryText,
            ),
          ],
        ),
      ),
    );
  }
}
