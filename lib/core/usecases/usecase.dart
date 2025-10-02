abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

// For use cases with no parameters
class NoParams {}