import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class SignupUseCase {
  final AuthRepository repository;

  SignupUseCase(this.repository);

  Future<UserEntity?> call(String name, String email, String password, {String? phone}) {
    return repository.signup(name, email, password, phone: phone);
  }
}