import 'package:medismart_river/domain/datasources/user_datasource.dart';
import 'package:medismart_river/domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  @override
  Future<User> getUser(String userName, String password) {
    return userDataSource.getUser(userName, password);
  }
}
