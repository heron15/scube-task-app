import '/app/exports.dart';

class RevenueViewContainer extends StatelessWidget {
  const RevenueViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const RadialGaugeChart(
            value: 8897455,
            unit: 'tk',
          ),
          SizedBox(height: 20.h),
          Consumer<SourceDetailsScreenProvider>(
            builder: (context, provider, child) {
              return _revenueDataCard(provider);
            },
          ),
        ],
      ),
    );
  }

  Widget _revenueDataCard(SourceDetailsScreenProvider provider) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: AppColors.grey.withOpacity(0.8),
          width: 1.w,
        ),
      ),
      child: Column(
        children: [
          _cardHeader(provider),
          if (provider.isRevenueExpanded) _cardContent(provider),
        ],
      ),
    );
  }

  Widget _cardHeader(SourceDetailsScreenProvider provider) {
    return InkWell(
      onTap: () => provider.toggleRevenueExpanded(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AssetsPath.graph,
                  width: 14.w,
                  height: 14.h,
                  colorFilter: ColorFilter.mode(AppColors.secondaryText, BlendMode.srcIn),
                ),
                SizedBox(width: 8.w),
                Text(
                  'Data & Cost Info',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryText,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    provider.isRevenueExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                    color: AppColors.white,
                    size: 18.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardContent(SourceDetailsScreenProvider provider) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.grey.withOpacity(0.3),
            width: 1.w,
          ),
        ),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: provider.revenueData.length,
        separatorBuilder: (context, index) => SizedBox(height: 8.h),
        itemBuilder: (context, index) {
          return RevenueListItem(
            revenueDataItem: provider.revenueData[index],
            index: index,
          );
        },
      ),
    );
  }
}
