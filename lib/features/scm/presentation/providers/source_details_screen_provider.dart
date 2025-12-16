import '/app/exports.dart';

class SourceDetailsScreenProvider extends ChangeNotifier {
  final GetRevenueDataUseCase getRevenueDataUseCase;

  SourceDetailsScreenProvider({
    required this.getRevenueDataUseCase,
  }) {
    _loadRevenueData();
  }

  int _selectedOptionIndex = 0;

  int get selectedOptionIndex => _selectedOptionIndex;

  bool isDataViewSelected() => _selectedOptionIndex == 0;
  bool isRevenueViewSelected() => _selectedOptionIndex == 1;

  void selectOption(int index) {
    if (_selectedOptionIndex != index) {
      _selectedOptionIndex = index;
      notifyListeners();
    }
  }

  int _selectedDateOptionIndex = 0;
  int get selectedDateOptionIndex => _selectedDateOptionIndex;

  bool isTodayDateOptionSelected() => _selectedDateOptionIndex == 0;
  bool isCustomDateOptionSelected() => _selectedDateOptionIndex == 1;

  void selectDateOption(int index) {
    if (_selectedDateOptionIndex != index) {
      _selectedDateOptionIndex = index;
      notifyListeners();
    }
  }

  List<RevenueDataItem> _revenueData = [];
  List<RevenueDataItem> get revenueData => _revenueData;

  bool _isRevenueExpanded = false;
  bool get isRevenueExpanded => _isRevenueExpanded;

  void toggleRevenueExpanded() {
    _isRevenueExpanded = !_isRevenueExpanded;
    notifyListeners();
  }

  void _loadRevenueData() {
    _revenueData = getRevenueDataUseCase();
    notifyListeners();
  }
}
