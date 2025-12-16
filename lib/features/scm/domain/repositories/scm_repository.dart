import '/app/exports.dart';

abstract class ScmRepository {
  List<SourceItem> getSourceData();
  List<SourceItem> getLoadData();
  List<ScmGridItem> getGridData();
}
