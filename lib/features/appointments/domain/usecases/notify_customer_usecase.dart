import '../repositories/appointment_repository.dart';

class NotifyCustomerUseCase {
  final AppointmentRepository repository;

  NotifyCustomerUseCase(this.repository);

  Future<void> call(String appointmentId, String message) {
    return repository.notifyCustomer(appointmentId, message);
  }
}