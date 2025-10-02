import '../repositories/service_repository.dart';

class DeleteServiceUseCase {
  final ServiceRepository repository;

  DeleteServiceUseCase(this.repository);

  Future<void> call(String serviceId) {
    return repository.deleteService(serviceId);
  }
}