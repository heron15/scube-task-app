import '/app/exports.dart';

class DataViewContainer extends StatelessWidget {
  const DataViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const RadialGaugeChart(
            value: 55.00,
            unit: 'kWh/Sqft',
          ),
          SizedBox(height: 12.h),
          Consumer<SourceDetailsScreenProvider>(
            builder: (context, provider, child) {
              return Column(
                children: [
                  _dateOption(provider),
                  SizedBox(height: 12.h),
                  if (provider.isTodayDateOptionSelected()) const TodayDataContainer(),
                  if (provider.isCustomDateOptionSelected()) const CustomDateDataContainer(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _dateOption(SourceDetailsScreenProvider provider) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => provider.selectDateOption(0),
            child: BuildOption(
              title: 'Today Data',
              isSelected: provider.isTodayDateOptionSelected(),
              size: 14.sp,
            ),
          ),
          GestureDetector(
            onTap: () => provider.selectDateOption(1),
            child: BuildOption(
              title: 'Custom Date Data',
              isSelected: provider.isCustomDateOptionSelected(),
              size: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
