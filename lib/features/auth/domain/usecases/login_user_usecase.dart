import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class LoginUserUseCase {
  final AuthRepository repository;

  LoginUserUseCase(this.repository);

  Future<UserEntity?> call(String email, String password) {
    return repository.login(email, password);
  }
}