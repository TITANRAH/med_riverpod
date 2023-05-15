

import '../entities/user.dart';

abstract class UserDataSource {
  Future<User> getUser(String userName ,String password, );

}
