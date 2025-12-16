import '/app/exports.dart';

abstract class ScmRepository {
  List<SourceItem> getSourceData();
  List<SourceItem> getLoadData();
  List<ScmGridItem> getGridData();
  List<ListOfDateWiseDataItem> getTodayData();
  List<ListOfDateWiseDataItem> getCustomDateData();
  List<RevenueDataItem> getRevenueData();
}
