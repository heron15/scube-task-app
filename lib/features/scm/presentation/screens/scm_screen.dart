import '/app/exports.dart';

class ScmScreen extends StatefulWidget {
  static const String routeName = '/scm';
  const ScmScreen({super.key});

  @override
  State<ScmScreen> createState() => _ScmScreenState();
}

class _ScmScreenState extends State<ScmScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  late TabController _twoTabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabChange);

    _twoTabController = TabController(length: 2, vsync: this);
    _twoTabController.addListener(_handleTwoTabChange);
  }

  void _handleTabChange() {
    if (!_tabController.indexIsChanging) {
      context.read<ScmScreenProvider>().updateTabIndex(_tabController.index);
    }
  }

  void _handleTwoTabChange() {
    if (!_twoTabController.indexIsChanging) {
      context.read<ScmScreenProvider>().updateTwoTabIndex(_twoTabController.index);
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    _twoTabController.removeListener(_handleTwoTabChange);
    _twoTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _scmAppBar(context),
      body: _scmScreenBody(),
    );
  }

  Widget _scmScreenBody() {
    return SafeArea(
      child: AppBackground(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              _detailsShowContainer(),
              SizedBox(height: 16.h),
              const ScmGridView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _detailsShowContainer() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: AppColors.grey.withOpacity(0.8),
          width: 1.w,
        ),
      ),
      child: Column(
        children: [
          _threeTabBar(),
          _threeTabBarContainer(),
        ],
      ),
    );
  }

  Widget _threeTabBarContainer() {
    return SizedBox(
      height: 480.h,
      child: TabBarView(
        controller: _tabController,
        children: [
          SummaryTabContainer(tabController: _twoTabController),
          SldTabContainer(),
          DataTabContainer(),
        ],
      ),
    );
  }

  Widget _threeTabBar() {
    return Consumer<ScmScreenProvider>(
      builder: (context, provider, child) {
        return TabBar(
          controller: _tabController,
          tabs: provider.tabs.map((tab) => Tab(text: tab)).toList(),
          labelColor: AppColors.white,
          unselectedLabelColor: AppColors.primaryText,
          indicator: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
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
        );
      },
    );
  }

  AppBar _scmAppBar(BuildContext context) {
    return AppBar(
      title: const Text('SCM'),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          AppRoutes.removePreviousPageAndGo(context, LoginScreen.routeName);
        },
        icon: const Icon(Icons.arrow_back),
      ),
      actionsPadding: EdgeInsets.only(right: 16.w),
      actions: [
        SvgPicture.asset(
          AssetsPath.bell,
          width: 20.w,
          height: 20.h,
        ),
      ],
    );
  }
}
