// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  String fullname;
  String userRole;
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
    this.fullname,
    this.userRole,
  );
}
