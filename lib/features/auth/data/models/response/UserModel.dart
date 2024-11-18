import 'package:e_comarce_clean/features/auth/domain/entities/UserEntity.dart';

class UserModel extends UserEntity {
  UserModel({
    this.message,
    super.user,
    super.token,
  });

  UserModel.fromJson(dynamic json) {
    message = json['message'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }

  String? message;


  @override
  UserModel copyWith({
    String? message,
    User? user,
    String? token,
  }) =>
      UserModel(
        message: message ?? this.message,
        user: user ?? this.user,
        token: token ?? this.token,
      );

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }
}

class UserData extends User {
  UserData({
    super.name,
    super.email,
    this.role,
  });

  UserData.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }


  String? role;

  @override
  User copyWith({
    String? name,
    String? email,
    String? role,
  }) =>
      UserData(
        name: name ?? this.name,
        email: email ?? this.email,
        role: role ?? this.role,
      );

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['role'] = role;
    return map;
  }
}
