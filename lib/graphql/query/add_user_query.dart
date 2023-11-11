class AddUserQuery {
  final String userId;
  final String userName;
  final String email;
  AddUserQuery(this.userId, this.userName, this.email);
  String get addUserMutation {
    return '''mutation insertuser{
insert_users(objects:{email:"$email",user_Id:"$userId",user_name:"$userName"}){
affected_rows
}
    }''';
  }
}
