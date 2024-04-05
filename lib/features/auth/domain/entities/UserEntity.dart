class UserEntity {
  UserEntity({
      this.user, 
      this.token,});

  UserEntity.fromJson(dynamic json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  User? user;
  String? token;
UserEntity copyWith({  User? user,
  String? token,
}) => UserEntity(  user: user ?? this.user,
  token: token ?? this.token,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }

}

class User {
  User({
      this.name, 
      this.email,});

  User.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
  }
  String? name;
  String? email;
User copyWith({  String? name,
  String? email,
}) => User(  name: name ?? this.name,
  email: email ?? this.email,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    return map;
  }

}