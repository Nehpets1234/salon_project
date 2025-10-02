import '../entities/service_entity.dart';
import '../repositories/service_repository.dart';

class AddServiceUseCase {
  final ServiceRepository repository;

  AddServiceUseCase(this.repository);

  Future<void> call(ServiceEntity service) {
    return repository.addService(service);
  }
}