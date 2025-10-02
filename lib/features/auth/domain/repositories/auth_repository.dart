import '../entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity?> login(String email, String password);
  Future<UserEntity?> signup(String name, String email, String password, {String? phone});
  Future<UserEntity?> getProfile();
  Future<void> updateProfile(UserEntity user);
}