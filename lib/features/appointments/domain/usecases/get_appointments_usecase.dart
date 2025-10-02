import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/appointment_entity.dart';

abstract class AppointmentRepository {
  Future<Either<Failure, List<AppointmentEntity>>> getAppointments({
    String? customerId,
    String? staffId,
  });

  Future<Either<Failure, AppointmentEntity>> updateAppointment(AppointmentEntity appointment);

  Future<Either<Failure, bool>> cancelAppointment(String appointmentId);

  Future<Either<Failure, bool>> notifyCustomer(String appointmentId, String message);
}
