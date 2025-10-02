import '../entities/service_entity.dart';
import '../repositories/service_repository.dart';

class GetServiceDetailUseCase {
  final ServiceRepository repository;

  GetServiceDetailUseCase(this.repository);

  Future<ServiceEntity?> call(String serviceId) {
    return repository.getServiceDetail(serviceId);
  }
}