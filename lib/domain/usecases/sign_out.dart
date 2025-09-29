// lib/domain/usecases/sign_out.dart
import 'package:dartz/dartz.dart';
import '../entities/failure.dart';
import '../repositories/user_repository.dart';

class SignOut {
  final UserRepository repository;
  SignOut(this.repository);

  Future<Either<Failure, void>> call() {
    return repository.signOut();
  }
}