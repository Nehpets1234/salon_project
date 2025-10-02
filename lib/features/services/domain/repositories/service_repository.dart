import '../entities/service_entity.dart';

abstract class ServiceRepository {
  Future<List<ServiceEntity>> getServices();
  Future<ServiceEntity?> getServiceDetail(String serviceId);
  Future<void> addService(ServiceEntity service);
  Future<void> updateService(ServiceEntity service);
  Future<void> deleteService(String serviceId);
}