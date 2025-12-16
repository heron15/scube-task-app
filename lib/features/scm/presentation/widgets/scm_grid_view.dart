import '/app/exports.dart';

class ScmGridView extends StatelessWidget {
  const ScmGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ScmScreenProvider>(
      builder: (context, provider, child) {
        if (provider.gridData.isEmpty) {
          return SizedBox(
            height: 100.h,
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

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 6.h,
            childAspectRatio: 3.2,
          ),
          itemCount: provider.gridData.length,
          itemBuilder: (context, index) {
            final item = provider.gridData[index];
            return ScmGridItemWidget(
              icon: item.icon,
              title: item.title,
            );
          },
        );
      },
    );
  }
}
