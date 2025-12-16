import '/app/exports.dart';

class SourceDetailsScreen extends StatefulWidget {
  static const String routeName = '/source-details';
  final String title;
  const SourceDetailsScreen({super.key, required this.title});

  @override
  State<SourceDetailsScreen> createState() => _SourceDetailsScreenState();
}

class _SourceDetailsScreenState extends State<SourceDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _sourceDetailsScreenAppBar(),
      body: _sourceDetailsScreenBody(),
    );
  }

  Widget _sourceDetailsScreenBody() {
    return SafeArea(
      child: AppBackground(
        child: Consumer<SourceDetailsScreenProvider>(
          builder: (context, provider, child) {
            return Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  margin: EdgeInsets.only(top: 35.h),
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16.r), topRight: Radius.circular(16.r)),
                    border: Border.all(color: AppColors.grey.withOpacity(0.8), width: 1.w),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const RadialGaugeChart(),
                        SizedBox(height: 20.h),
                        if (provider.isDataViewSelected())
                          const DataViewContainer()
                        else if (provider.isRevenueViewSelected())
                          const RevenueViewContainer(),
                      ],
                    ),
                  ),
                ),
                _topOptionSelectContainer(provider),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _topOptionSelectContainer(SourceDetailsScreenProvider provider) {
    return Positioned(
      top: 15.h,
      left: 30.w,
      right: 30.w,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.grey.withOpacity(0.8), width: 1.w),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => provider.selectOption(0),
              child: BuildOption(
                title: 'Data View',
                isSelected: provider.isDataViewSelected(),
              ),
            ),
            GestureDetector(
              onTap: () => provider.selectOption(1),
              child: BuildOption(
                title: 'Revenue View',
                isSelected: provider.isRevenueViewSelected(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _sourceDetailsScreenAppBar() {
    return AppBar(
      title: Text(widget.title),
      actions: [
        SvgPicture.asset(
          AssetsPath.bell,
          width: 20.w,
          height: 20.h,
        ),
      ],
      actionsPadding: EdgeInsets.only(right: 16.w),
      centerTitle: true,
    );
  }
}
