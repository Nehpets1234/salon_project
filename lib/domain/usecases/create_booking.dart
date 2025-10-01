// lib/domain/usecases/create_booking.dart
import 'package:dartz/dartz.dart';
import '../entities/booking.dart';
import '../entities/failure.dart';
import '../repositories/booking_repository.dart';

class CreateBooking {
	final BookingRepository repository;
	CreateBooking(this.repository);

	Future<Either<Failure, Booking>> call({
		required String userId,
		required String serviceId,
		String? staffId,
		required DateTime dateTime,
		required int durationMinutes,
		required double price,
	}) {
		return repository.createBooking(
			userId: userId,
			serviceId: serviceId,
			staffId: staffId,
			dateTime: dateTime,
			durationMinutes: durationMinutes,
			price: price,
		);
	}
}
