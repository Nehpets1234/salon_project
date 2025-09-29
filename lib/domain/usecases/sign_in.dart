// lib/domain/usecases/sign_in.dart
import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../entities/failure.dart';
import '../repositories/user_repository.dart';

class SignIn {
  final UserRepository repository;
  SignIn(this.repository);

  Future<Either<Failure, User>> call({
    required String email,
    required String password,
  }) {
    return repository.signIn(
      email: email,
      password: password,
    );
  }
}