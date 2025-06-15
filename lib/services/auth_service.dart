import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kareerbuddy/constant/api.dart';
import 'package:kareerbuddy/core_storage/core_storage_service.dart';
import 'package:kareerbuddy/model/login_response.dart';
import 'package:kareerbuddy/model/user_model.dart';

//authService handles API communication
class AuthService {
  //Sends login request and saves token
  Future<bool> login(String username, String password) async {
    final response = await http.post(
      Uri.parse(Api.loginUrl),
      headers: {'Content-Type': ' application/json'},
      body: jsonEncode({'username': username, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = LoginResponse.fromJson(jsonDecode(response.body));
      CoreStorageService.saveToken(data.token); // Save token on success
      return true;
    }
    return false; // Login failed
  }

  // Gets user profile using stored token
  Future<UserModel?> getProfile() async {
    final token = CoreStorageService.getToken();
    if (token == null) return null;

    final response = await http.get(
      Uri.parse(Api.profileUrl),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
