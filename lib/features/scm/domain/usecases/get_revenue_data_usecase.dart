import '/app/exports.dart';

class GetRevenueDataUseCase {
  final ScmRepository repository;

  GetRevenueDataUseCase(this.repository);

  List<RevenueDataItem> call() {
    return repository.getRevenueData();
  }
}

