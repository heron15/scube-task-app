import '/app/exports.dart';

class GetGridDataUseCase {
  final ScmRepository repository;

  GetGridDataUseCase(this.repository);

  List<ScmGridItem> call() {
    return repository.getGridData();
  }
}
