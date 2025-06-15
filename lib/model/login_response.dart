class LoginResponse {
  final String token;

  LoginResponse({required this.token});

  //converts JSOn to Dart object
  factory LoginResponse.formJson(Map<String, dynamic> json){
    return LoginResponse(token: json['token']);
  }
}