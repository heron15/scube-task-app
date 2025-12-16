import '/app/exports.dart';

class SummaryTabContainer extends StatelessWidget {
  final TabController tabController;
  const SummaryTabContainer({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ScmScreenProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Column(
            children: [
              _topTitleText(),
              const Divider(),
              _totalPowerCircleGraph(context, provider),
              SizedBox(height: 10.h),
              _twoTabBar(provider),
              Divider(thickness: 2.h),
              _twoTabBarContainer(),
            ],
          ),
        );
      },
    );
  }

  Widget _twoTabBarContainer() {
    return SizedBox(
      height: 230.h,
      child: TabBarView(
        controller: tabController,
        children: const [
          SourceTabContainer(),
          LoadTabContainer(),
        ],
      ),
    );
  }

  Widget _twoTabBar(ScmScreenProvider provider) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.tabBarBackground.withOpacity(0.2),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: TabBar(
        controller: tabController,
        tabs: provider.twoTabs.map((tab) => Tab(text: tab)).toList(),
        labelColor: AppColors.white,
        unselectedLabelColor: AppColors.primaryText,
        indicator: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(25.r),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryText,
        ),
        dividerColor: Colors.transparent,
      ),
    );
  }

  Widget _totalPowerCircleGraph(BuildContext context, ScmScreenProvider provider) {
    return SizedBox(
      width: 180.w,
      height: 180.w,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 150.w,
            height: 150.w,
            child: CircularProgressIndicator(
              value: 1,
              strokeWidth: 20.w,
              backgroundColor: Colors.grey.shade200,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.circleGraphBackground),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Total Power',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.primaryText,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                '${provider.totalPower} kW',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _topTitleText() {
    return Text(
      'Electricity',
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.secondaryText,
      ),
    );
  }
}
