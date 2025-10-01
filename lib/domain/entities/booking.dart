// lib/domain/entities/booking.dart
import 'package:equatable/equatable.dart';

class Booking extends Equatable {
	final String id;
	final String userId;
	final String serviceId;
	final String? staffId;
	final DateTime dateTime;
	final int durationMinutes;
	final double price;

	const Booking({
		required this.id,
		required this.userId,
		required this.serviceId,
		this.staffId,
		required this.dateTime,
		required this.durationMinutes,
		required this.price,
	});

	@override
	List<Object?> get props => [id, userId, serviceId, staffId, dateTime, durationMinutes, price];
}
