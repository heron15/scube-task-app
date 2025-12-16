import '/app/exports.dart';

class DataViewContainer extends StatelessWidget {
  const DataViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Data View Information',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryText,
            ),
          ),
          SizedBox(height: 12.h),
          _buildDataRow('Parameter 1', '125.5 kW'),
          SizedBox(height: 8.h),
          _buildDataRow('Parameter 2', '89.2 kWh'),
          SizedBox(height: 8.h),
          _buildDataRow('Parameter 3', '95.8%'),
          SizedBox(height: 8.h),
          _buildDataRow('Parameter 4', '42.3 A'),
        ],
      ),
    );
  }

  Widget _buildDataRow(String label, String value) {
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
            color: AppColors.primaryText,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

