import '../entities/source_item.dart';
import '../repositories/scm_repository.dart';

class GetSourceDataUseCase {
  final ScmRepository repository;

  GetSourceDataUseCase(this.repository);

  List<SourceItem> call() {
    return repository.getSourceData();
  }

  
}
