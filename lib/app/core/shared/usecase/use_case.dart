abstract interface class UseCase<Output, Input> {
  Future<(Exception?, Output?)> call(Input params);
}

class NoParams {}