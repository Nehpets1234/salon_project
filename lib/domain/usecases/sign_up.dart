// lib/domain/usecases/sign_up.dart
import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../entities/failure.dart';
import '../repositories/user_repository.dart';

class SignUp {
  final UserRepository repository;
  SignUp(this.repository);

  Future<Either<Failure, User>> call({
    required String name,
    required String email,
    required String password,
    String? phone,
    required UserRole role,
  }) {
    return repository.signUp(
      name: name,
      email: email,
      password: password,
      phone: phone,
      role: role,
    );
  }
}