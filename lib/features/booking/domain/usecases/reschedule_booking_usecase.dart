import '../repositories/booking_repository.dart';

class RescheduleBookingUseCase {
  final BookingRepository repository;

  RescheduleBookingUseCase(this.repository);

  Future<void> call(String bookingId, DateTime newDateTime) {
    return repository.rescheduleBooking(bookingId, newDateTime);
  }
}