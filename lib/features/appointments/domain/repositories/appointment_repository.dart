import '../entities/appointment_entity.dart';

abstract class AppointmentRepository {
  Future<List<AppointmentEntity>> getAppointments({String? customerId, String? staffId});
  Future<void> updateAppointment(AppointmentEntity appointment);
  Future<void> cancelAppointment(String appointmentId);
  Future<void> notifyCustomer(String appointmentId, String message);
}

