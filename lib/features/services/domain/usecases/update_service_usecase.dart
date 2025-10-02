import '../entities/service_entity.dart';
import '../repositories/service_repository.dart';

class UpdateServiceUseCase {
  final ServiceRepository repository;

  UpdateServiceUseCase(this.repository);

  Future<void> call(ServiceEntity service) {
    return repository.updateService(service);
  }
}