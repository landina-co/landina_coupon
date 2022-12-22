class UserModel {
  String? id;
  String? name;
  String? username;
  String? email;
  String? password;
  String? bio;
  String? profilePicture;
  String? accountType;

  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.password,
    this.bio,
    this.profilePicture,
    this.accountType,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'password': password,
      'bio': bio,
      'profilePicture': profilePicture,
      'accountType': accountType,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['_id'] ?? ' ',
      name: map['name'] ?? ' ',
      username: map['username'] ?? ' ',
      email: map['email'] ?? ' ',
      password: map['password'] ?? ' ',
      bio: map['bio'] ?? ' ',
      profilePicture: map['profilePicture'] ?? ' ',
      accountType: map['accountType'] ?? ' ',
    );
  }
}
