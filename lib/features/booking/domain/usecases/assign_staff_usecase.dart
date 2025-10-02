import '../repositories/booking_repository.dart';

class AssignStaffUseCase {
  final BookingRepository repository;

  AssignStaffUseCase(this.repository);

  Future<void> call(String bookingId, String staffId) {
    return repository.assignStaff(bookingId, staffId);
  }
}