import '/app/exports.dart';

class SourceDetailsScreenProvider extends ChangeNotifier {
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
}
