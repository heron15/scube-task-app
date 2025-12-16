import '/app/exports.dart';

class RevenueViewContainer extends StatelessWidget {
  const RevenueViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Revenue View Information',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryText,
            ),
          ),
          SizedBox(height: 12.h),
          _buildRevenueRow('Total Revenue', '\$5,420'),
          SizedBox(height: 8.h),
          _buildRevenueRow('Cost per kWh', '\$0.12'),
          SizedBox(height: 8.h),
          _buildRevenueRow('Monthly Savings', '\$850'),
          SizedBox(height: 8.h),
          _buildRevenueRow('ROI', '18.5%'),
        ],
      ),
    );
  }

  Widget _buildRevenueRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.secondaryText,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
