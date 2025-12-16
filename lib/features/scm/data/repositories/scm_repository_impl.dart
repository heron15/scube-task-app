import '/app/exports.dart';

class ScmRepositoryImpl implements ScmRepository {
  @override
  List<SourceItem> getSourceData() {
    return [
      SourceItem(
        color: AppColors.skyBlue,
        icon: AssetsPath.solarPanel,
        title: 'Data View',
        data1: 55505.63,
        data2: 58805.63,
        isActive: true,
      ),
      SourceItem(
        color: AppColors.orange,
        icon: AssetsPath.electric,
        title: 'Data Type 2',
        data1: 55505.63,
        data2: 58805.63,
        isActive: true,
      ),
      SourceItem(
        color: AppColors.skyBlue,
        icon: AssetsPath.tower,
        title: 'Data Type 3',
        data1: 55505.63,
        data2: 58805.63,
        isActive: false,
      ),
      SourceItem(
        color: AppColors.skyBlue,
        icon: AssetsPath.solarPanel,
        title: 'Data Type 4',
        data1: 55505.63,
        data2: 58805.63,
        isActive: false,
      ),
      SourceItem(
        color: AppColors.skyBlue,
        icon: AssetsPath.electric,
        title: 'Data Type 5',
        data1: 55505.63,
        data2: 58805.63,
        isActive: true,
      ),
      SourceItem(
        color: AppColors.skyBlue,
        icon: AssetsPath.tower,
        title: 'Data Type 6',
        data1: 55505.63,
        data2: 58805.63,
        isActive: false,
      ),
    ];
  }

  @override
  List<SourceItem> getLoadData() {
    return [];
  }

  @override
  List<ScmGridItem> getGridData() {
    return [
      ScmGridItem(
        icon: AssetsPath.analysisPro,
        title: 'Analysis Pro',
      ),
      ScmGridItem(
        icon: AssetsPath.generator,
        title: 'G. Generator',
      ),
      ScmGridItem(
        icon: AssetsPath.plantSummery,
        title: 'Plant Summery',
      ),
      ScmGridItem(
        icon: AssetsPath.naturalGas,
        title: 'Natural Gas',
      ),
      ScmGridItem(
        icon: AssetsPath.generator,
        title: 'D. Generator',
      ),
      ScmGridItem(
        icon: AssetsPath.waterProcess,
        title: 'Water Process',
      ),
    ];
  }
}
