import 'package:scube_task_app/app/exports.dart';

class ScmScreenProvider extends ChangeNotifier {
  final GetSourceDataUseCase getSourceDataUseCase;
  final GetGridDataUseCase getGridDataUseCase;
  final GetTodayDataUseCase getTodayDataUseCase;
  final GetCustomDateDataUseCase getCustomDateDataUseCase;

  ScmScreenProvider({
    required this.getSourceDataUseCase,
    required this.getGridDataUseCase,
    required this.getTodayDataUseCase,
    required this.getCustomDateDataUseCase,
  }) {
    _loadSourceData();
    _loadGridData();
    _loadTodayData();
    _loadCustomDateData();
  }

  static const List<String> _tabs = ['Summary', 'SLD', 'Data'];
  static const List<String> _twoTabs = ['Source', 'Load'];
  static const double _totalPower = 5.53;
  static const String _userName = "Haq Sohaq";

  List<String> get tabs => _tabs;
  List<String> get twoTabs => _twoTabs;
  double get totalPower => _totalPower;
  String get userName => _userName;

  int _currentTabIndex = 0;
  int _currentTwoTabIndex = 0;

  int get currentTabIndex => _currentTabIndex;
  int get currentTwoTabIndex => _currentTwoTabIndex;

  void updateTabIndex(int index) {
    if (_currentTabIndex == index) return;
    _currentTabIndex = index;
    notifyListeners();
  }

  void updateTwoTabIndex(int index) {
    if (_currentTwoTabIndex == index) return;
    _currentTwoTabIndex = index;
    notifyListeners();
  }

  List<SourceItem> _sourceData = [];
  List<SourceItem> get sourceData => _sourceData;

  List<ScmGridItem> _gridData = [];
  List<ScmGridItem> get gridData => _gridData;

  List<ListOfDateWiseDataItem> _todayData = [];
  List<ListOfDateWiseDataItem> get todayData => _todayData;

  List<ListOfDateWiseDataItem> _customDateData = [];
  List<ListOfDateWiseDataItem> get customDateData => _customDateData;

  void _loadSourceData() {
    _sourceData = getSourceDataUseCase.call();
    notifyListeners();
  }

  void _loadGridData() {
    _gridData = getGridDataUseCase.call();
    notifyListeners();
  }

  void _loadTodayData() {
    _todayData = getTodayDataUseCase.call();
    notifyListeners();
  }

  void _loadCustomDateData() {
    _customDateData = getCustomDateDataUseCase.call();
    notifyListeners();
  }

  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _toDateController = TextEditingController();

  TextEditingController get fromDateController => _fromDateController;
  TextEditingController get toDateController => _toDateController;
}
