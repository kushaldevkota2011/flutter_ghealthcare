abstract class CredentialStorage {
  Future<String?> read();
  Future<void> save(String accessToken, int expiresIn);
  Future<void> clear();
}
