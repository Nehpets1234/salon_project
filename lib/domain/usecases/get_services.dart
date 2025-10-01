// lib/domain/usecases/get_services.dart
import 'package:dartz/dartz.dart';
import '../entities/service.dart';
import '../entities/failure.dart';
import '../repositories/service_repository.dart';

class GetServices {
	final ServiceRepository repository;
	GetServices(this.repository);

	Future<Either<Failure, List<Service>>> call() {
		return repository.getServices();
	}
}
