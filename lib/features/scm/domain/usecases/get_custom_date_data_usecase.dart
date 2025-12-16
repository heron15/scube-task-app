import '/app/exports.dart';

class GetCustomDateDataUseCase {
  final ScmRepository repository;

  GetCustomDateDataUseCase(this.repository);

  List<ListOfDateWiseDataItem> call() {
    return repository.getCustomDateData();
  }
}