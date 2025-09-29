// lib/domain/repositories/user_repository.dart
import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../entities/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> signUp({
    required String name,
    required String email,
    required String password,
    String? phone,
    required UserRole role,
  });

  Future<Either<Failure, User>> signIn({
    required String email,
    required String password,
  });

  Future<Either<Failure, User>> getCurrentUser();

  Future<Either<Failure, void>> signOut();
}