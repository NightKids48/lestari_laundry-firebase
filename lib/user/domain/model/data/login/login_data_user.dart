class LoginDataUser {
  int id;
  String email;
  String provider;
  bool confirmed;
  bool blocked;
  String createdAt;
  String updateAt;
  String username;
  String phonenumber;

  LoginDataUser(
    this.id,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    this.createdAt,
    this.updateAt,
    this.username,
    this.phonenumber,
  );
}
