import '/app/exports.dart';

class GetSourceDataUseCase {
  final ScmRepository repository;

  GetSourceDataUseCase(this.repository);

  List<SourceItem> call() {
    return repository.getSourceData();
  }
}
