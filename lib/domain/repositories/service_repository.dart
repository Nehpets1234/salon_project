// lib/domain/repositories/service_repository.dart
import 'package:dartz/dartz.dart';
import '../entities/service.dart';
import '../entities/failure.dart';

abstract class ServiceRepository {
	Future<Either<Failure, List<Service>>> getServices();
}
