// lib/domain/usecases/get_appointments.dart
import 'package:dartz/dartz.dart';
import '../entities/appointment.dart';
import '../entities/failure.dart';
import '../repositories/appointment_repository.dart';

class GetAppointments {
	final AppointmentRepository repository;
	GetAppointments(this.repository);

	Future<Either<Failure, List<Appointment>>> call({
		String? staffId,
		String? customerId,
	}) {
		return repository.getAppointments(
			staffId: staffId,
			customerId: customerId,
		);
	}
}
