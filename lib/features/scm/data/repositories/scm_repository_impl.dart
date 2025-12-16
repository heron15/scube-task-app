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

  @override
  List<ListOfDateWiseDataItem> getTodayData() {
    return [
      ListOfDateWiseDataItem(
        dateWiseDataItemList: [
          DateWiseDataItem(
            energyChart: '5.53 kw',
            dataList: [
              Data(
                color: AppColors.blue,
                title: 'Data A',
                data: '2798.50 (29.53%)',
                cost: '35689 ৳',
              ),
              Data(
                color: AppColors.skyBlue,
                title: 'Data B',
                data: '2798.50 (35.39%)',
                cost: '3868944 ৳',
              ),
              Data(
                color: AppColors.deepPurple,
                title: 'Data C',
                data: '6598.36 (83.90%)',
                cost: '35689 ৳',
              ),
              Data(
                color: AppColors.orange,
                title: 'Data D',
                data: '6598.26 (36.59%)',
                cost: '3868944 ৳',
              ),
            ],
          ),
        ],
      ),
    ];
  }

  @override
  List<ListOfDateWiseDataItem> getCustomDateData() {
    return [
      ListOfDateWiseDataItem(
        dateWiseDataItemList: [
          DateWiseDataItem(
            energyChart: '20.05 kw',
            dataList: [
              Data(
                color: AppColors.blue,
                title: 'Data A',
                data: '2798.50 (29.53%)',
                cost: '35689 ৳',
              ),
              Data(
                color: AppColors.skyBlue,
                title: 'Data B',
                data: '2798.50 (35.39%)',
                cost: '3868944 ৳',
              ),
              Data(
                color: AppColors.deepPurple,
                title: 'Data C',
                data: '6598.36 (83.90%)',
                cost: '35689 ৳',
              ),
              Data(
                color: AppColors.orange,
                title: 'Data D',
                data: '6598.26 (36.59%)',
                cost: '3868944 ৳',
              ),
            ],
          ),
          DateWiseDataItem(
            energyChart: '5.53 kw',
            dataList: [
              Data(
                color: AppColors.blue,
                title: 'Data A',
                data: '2798.50 (29.53%)',
                cost: '35689 ৳',
              ),
              Data(
                color: AppColors.skyBlue,
                title: 'Data B',
                data: '2798.50 (35.39%)',
                cost: '3868944 ৳',
              ),
              Data(
                color: AppColors.deepPurple,
                title: 'Data C',
                data: '6598.36 (83.90%)',
                cost: '35689 ৳',
              ),
              Data(
                color: AppColors.orange,
                title: 'Data D',
                data: '6598.26 (36.59%)',
                cost: '3868944 ৳',
              ),
            ],
          ),
        ],
      ),
    ];
  }

  @override
  List<RevenueDataItem> getRevenueData() {
    return [
      RevenueDataItem(
        data: '2798.50 (29.53%)',
        cost: '35689 ৳',
      ),
      RevenueDataItem(
        data: '2798.50 (29.53%)',
        cost: '35689 ৳',
      ),
      RevenueDataItem(
        data: '2798.50 (29.53%)',
        cost: '35689 ৳',
      ),
      RevenueDataItem(
        data: '2798.50 (29.53%)',
        cost: '35689 ৳',
      ),
    ];
  }
}
