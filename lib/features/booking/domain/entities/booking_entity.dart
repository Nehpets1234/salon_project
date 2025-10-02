class BookingEntity {
  final String id;
  final String userId;
  final String serviceId;
  final String staffId;
  final DateTime dateTime;
  final int durationMinutes;
  final String status; // e.g., 'confirmed', 'cancelled', 'completed'

  BookingEntity({
    required this.id,
    required this.userId,
    required this.serviceId,
    required this.staffId,
    required this.dateTime,
    required this.durationMinutes,
    required this.status,
  });
}