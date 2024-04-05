class SignUserModel {
  SignUserModel({
      this.name, 
      this.email, 
      this.password, 
      this.rePassword, 
      this.phone,});

  SignUserModel.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    rePassword = json['rePassword'];
    phone = json['phone'];
  }
  String? name;
  String? email;
  String? password;
  String? rePassword;
  String? phone;
SignUserModel copyWith({  String? name,
  String? email,
  String? password,
  String? rePassword,
  String? phone,
}) => SignUserModel(  name: name ?? this.name,
  email: email ?? this.email,
  password: password ?? this.password,
  rePassword: rePassword ?? this.rePassword,
  phone: phone ?? this.phone,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    map['rePassword'] = rePassword;
    map['phone'] = phone;
    return map;
  }

}