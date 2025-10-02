import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class RegisterUserUseCase {
  final AuthRepository repository;

  RegisterUserUseCase(this.repository);

  Future<UserEntity?> call(String name, String email, String password, {String? phone}) {
    return repository.register(name, email, password, phone: phone);
  }
}