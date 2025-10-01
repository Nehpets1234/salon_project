// lib/domain/repositories/appointment_repository.dart
import 'package:dartz/dartz.dart';
import '../entities/appointment.dart';
import '../entities/failure.dart';

abstract class AppointmentRepository {
	Future<Either<Failure, List<Appointment>>> getAppointments({
		String? staffId,
		String? customerId,
	});

	Future<Either<Failure, Appointment>> updateAppointmentStatus({
		required String appointmentId,
		required AppointmentStatus status,
	});
}
