import '../entities/scm_grid_item.dart';
import '../repositories/scm_repository.dart';

class GetGridDataUseCase {
  final ScmRepository repository;

  GetGridDataUseCase(this.repository);

  List<ScmGridItem> call() {
    return repository.getGridData();
  }
}

