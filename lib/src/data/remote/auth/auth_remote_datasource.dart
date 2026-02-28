abstract class AuthRemoteDatasource {
  Future<String> login({required String username, required String password});
}
