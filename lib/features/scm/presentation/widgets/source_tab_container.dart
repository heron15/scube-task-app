import '/app/exports.dart';

class SourceTabContainer extends StatefulWidget {
  const SourceTabContainer({super.key});

  @override
  State<SourceTabContainer> createState() => _SourceTabContainerState();
}

class _SourceTabContainerState extends State<SourceTabContainer> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ScmScreenProvider>(
      builder: (context, provider, child) {
        if (provider.sourceData.isEmpty) {
          return SizedBox(
            height: 60.h,
            child: Center(
              child: Text(
                'No data available',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.secondaryText,
                ),
              ),
            ),
          );
        }

        return Container(
          height: 60.h,
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: AppColors.white,
          ),
          child: ScrollbarTheme(
            data: ScrollbarThemeData(
              thumbColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.dragged)) {
                  return AppColors.primary;
                }
                if (states.contains(WidgetState.hovered)) {
                  return AppColors.primary.withOpacity(0.9);
                }
                return AppColors.primary.withOpacity(0.7);
              }),
              trackColor: WidgetStateProperty.all(
                AppColors.grey.withOpacity(0.2),
              ),
              trackVisibility: WidgetStateProperty.all(true),
              radius: Radius.circular(10.r),
              thickness: WidgetStateProperty.all(6.w),
            ),
            child: Scrollbar(
              controller: _scrollController,
              thumbVisibility: true,
              child: ListView.builder(
                controller: _scrollController,
                padding: EdgeInsets.only(right: 8.w),
                physics: const BouncingScrollPhysics(),
                itemCount: provider.sourceData.length,
                itemBuilder: (context, index) {
                  final item = provider.sourceData[index];
                  return SourceListItem(
                    sourceItem: item,
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
