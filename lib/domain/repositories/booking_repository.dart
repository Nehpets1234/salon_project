// lib/domain/repositories/booking_repository.dart
import 'package:dartz/dartz.dart';
import '../entities/booking.dart';
import '../entities/failure.dart';

abstract class BookingRepository {
	Future<Either<Failure, Booking>> createBooking({
		required String userId,
		required String serviceId,
		String? staffId,
		required DateTime dateTime,
		required int durationMinutes,
		required double price,
	});
}
