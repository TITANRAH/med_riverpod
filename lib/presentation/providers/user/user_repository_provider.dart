import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medismart_river/infrastructure/datasources/user_login_datasource.dart';
import 'package:medismart_river/infrastructure/repositories/user_repository_impl.dart';

final userRepositoryProvider = Provider((ref) {
  return UserRepositoryImpl(UserLoginDatasource());
});
