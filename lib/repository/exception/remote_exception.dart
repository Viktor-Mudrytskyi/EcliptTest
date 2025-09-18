class RemoteException implements Exception {
  final String message;

  const RemoteException({this.message = 'Unable to fetch from remote'});
}
