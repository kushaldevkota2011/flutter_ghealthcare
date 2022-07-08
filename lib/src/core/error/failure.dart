abstract class Failure {
  final String? message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure({required String message}) : super(message);
}

class StorageFailure extends Failure {
  StorageFailure() : super('Storage Failure');
}
