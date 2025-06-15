import 'package:get_storage/get_storage.dart';

class CoreStorageService {
  static final GetStorage_box = GetStorage();
  static void saveToken(String token) => _box.write('token', token);  //save token
  static String? getToken() => _box.read('token');   //read token
  static String? clearToken() => _box.remove('token');  //clear token to  logout
  static String? isLoggedINToken() => _box.hasData('token'); //check login status

}