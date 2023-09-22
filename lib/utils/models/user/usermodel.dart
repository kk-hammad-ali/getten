class UserModel {
  int? userId;
  String? username;
  String? email;
  String? about;
  String? userType;
  String? regDate;
  String? status;

  UserModel({
    this.userId,
    this.username,
    this.email,
    this.about,
    this.userType,
    this.regDate,
    this.status,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    username = json['username'];
    email = json['email'];
    about = json['about'];
    userType = json['user_type'];
    regDate = json['reg_date'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['username'] = username;
    data['email'] = email;
    data['about'] = about;
    data['user_type'] = userType;
    data['reg_date'] = regDate;
    data['status'] = status;
    return data;
  }
}
