class Exception {
  final String? message;

  Exception({this.message});
}

class RemoteException extends Exception {
  RemoteException({super.message});
}
