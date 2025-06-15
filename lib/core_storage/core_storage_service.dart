import 'package:get_storage/get_storage.dart';

class CoreStorageService {
  static final GetStorage_box = GetStorage();
   static void saveToken(String token) => _box.write('token', token);
  static String? getToken() => _box.read('token');
  static void clearToken() => _box.remove('token');
  static bool isLoggedIn() => _box.hasData('token');

}