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

class GetUserEamilQuery {
  final String userName;
  GetUserEamilQuery(this.userName);
  String get getuserEMailQuery {
    return '''query My_addUserQuery {
  users(where: {user_name: {_eq: "$userName"}}) {
    email
  }
}
''';
  }
}

class CheckUserName {
  final String userName;
  CheckUserName(this.userName);
  String get checkUserNameQuery {
    return ''' query MyQuery {
  users(where: {user_name: {_eq: "$userName"}}) {
  
    user_name
  }
}''';
  }
}
