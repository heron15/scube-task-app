import '/app/exports.dart';

class TodayDataContainer extends StatelessWidget {
  const TodayDataContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final todayData = getIt<ScmScreenProvider>().todayData;

    if (todayData.isEmpty) {
      return const SizedBox.shrink();
    }

    return ListView.builder(
      itemCount: todayData[0].dateWiseDataItemList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return DateWiseDataListItem(
          dateWiseDataItem: todayData[0].dateWiseDataItemList[index],
          index: index,
        );
      },
    );
  }
}
