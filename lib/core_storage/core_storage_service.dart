import 'package:get_storage/get_storage.dart';

// Handles saving and retrieving data securely from local storage
class CoreStorageService {
  static final GetStorage _box = GetStorage();

  static void saveToken(String token) =>
      _box.write('token', token); // Save token
  static String? getToken() => _box.read('token'); // Read token
  static void clearToken() => _box.remove('token'); // Clear token on logout
  static bool isLoggedIn() => _box.hasData('token'); // Check login status
}
