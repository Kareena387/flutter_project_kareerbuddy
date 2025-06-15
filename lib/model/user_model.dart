//User profile model
class UserModel {
  final int id;
  final String firstName;
  final String email;

  UserModel({required this.id, required this.firstName, required this.email});

  //Converts JSON to Dart Object
factory UserModel.fromJson(Map<String, dynamic> json) {
  return UserModel(id: json['id'],
      firstName: json['firstName'],
      email: json['email'],
  );
}
}