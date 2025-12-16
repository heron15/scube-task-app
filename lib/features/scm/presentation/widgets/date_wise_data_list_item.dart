import '/app/exports.dart';

class DateWiseDataListItem extends StatelessWidget {
  final DateWiseDataItem dateWiseDataItem;
  final int index;
  const DateWiseDataListItem({
    super.key,
    required this.dateWiseDataItem,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.grey.withOpacity(0.9), width: 1.2.w),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Energy Chart',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryText,
                  ),
                ),
                Text(
                  dateWiseDataItem.energyChart,
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryText,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            itemCount: dateWiseDataItem.dataList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, dataIndex) {
              return Container(
                margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 5.h),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(
                    color: AppColors.grey.withOpacity(0.8),
                    width: 1.w,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.circle,
                            color: dateWiseDataItem.dataList[dataIndex].color,
                            size: 12.sp,
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            dateWiseDataItem.dataList[dataIndex].title,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryText,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.w),
                        width: 1.w,
                        height: 25.h,
                        color: AppColors.grey.withOpacity(0.8),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTwoRichText(
                            firstText: "Data   : ",
                            secondText: dateWiseDataItem.dataList[dataIndex].data,
                            firstTextColor: AppColors.secondaryText,
                            secondTextColor: AppColors.primaryText,
                            firstTextSize: 12.sp,
                            secondTextSize: 12.sp,
                            firstTextFontWeight: FontWeight.w400,
                            secondTextFontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 3.h),
                          CustomTwoRichText(
                            firstText: "Cost   : ",
                            secondText: dateWiseDataItem.dataList[dataIndex].cost,
                            firstTextColor: AppColors.secondaryText,
                            secondTextColor: AppColors.primaryText,
                            firstTextSize: 12.sp,
                            secondTextSize: 12.sp,
                            firstTextFontWeight: FontWeight.w400,
                            secondTextFontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
