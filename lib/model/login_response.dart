class LoginResponse {
  final String token;

  LoginResponse({required this.token});

  //converts JSOn to Dart object
  factory LoginResponse.fromJson(Map<String, dynamic> json){
    return LoginResponse(token: json['token']);
  }
}