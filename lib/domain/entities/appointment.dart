// lib/domain/entities/appointment.dart
import 'package:equatable/equatable.dart';

enum AppointmentStatus { pending, accepted, modified, cancelled }

class Appointment extends Equatable {
	final String id;
	final String bookingId;
	final String customerId;
	final String serviceId;
	final String? staffId;
	final DateTime dateTime;
	final AppointmentStatus status;

	const Appointment({
		required this.id,
		required this.bookingId,
		required this.customerId,
		required this.serviceId,
		this.staffId,
		required this.dateTime,
		required this.status,
	});

	@override
	List<Object?> get props => [id, bookingId, customerId, serviceId, staffId, dateTime, status];
}
