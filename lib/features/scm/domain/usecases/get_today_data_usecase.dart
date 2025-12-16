import '/app/exports.dart';

class GetTodayDataUseCase {
  final ScmRepository repository;

  GetTodayDataUseCase(this.repository);

  List<ListOfDateWiseDataItem> call() {
    return repository.getTodayData();
  }
}