abstract interface class AuthOfflineDatasource {
  Future<void> saveUserToken(String token);
  Future<String?> getUserToken();
  Future<void> deleteUserToken();
}
