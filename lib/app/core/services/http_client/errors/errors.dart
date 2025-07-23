class ServerException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  ServerException(this.message, [this.stackTrace]);

  @override
  String toString() {
    return 'ServerException: $message';
  }
}

class ServerUnavailableError implements Exception {
  final String message;
  final StackTrace? stackTrace;

  ServerUnavailableError(this.message, [this.stackTrace]);

  @override
  String toString() {
    return 'ServerException: $message';
  }
}

class AuthenticationError implements Exception {
  final String message;
  final StackTrace? stackTrace;

  AuthenticationError(this.message, [this.stackTrace]);

  @override
  String toString() {
    return 'ServerException: $message';
  }
}