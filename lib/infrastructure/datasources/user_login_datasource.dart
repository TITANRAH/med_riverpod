import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:medismart_river/domain/datasources/user_datasource.dart';
import 'package:medismart_river/domain/entities/user.dart';
import 'package:medismart_river/infrastructure/mappers/user_mapper.dart';
import 'package:medismart_river/infrastructure/models/user_response.dart';

class UserLoginDatasource extends UserDataSource {
  final dioLogin = Dio(
    BaseOptions(
      baseUrl: 'https://api-auth-ms-prod.azurewebsites.net',
    ),
  );

  @override
  Future<User> getUser(String userName, String password) async {
    final response = await dioLogin.post(
      '/api/Login',
      data: jsonEncode(
        {
          "userName": userName,
          "password": password,
        },
      ),
    );

    final userResponse = UserResponse.fromJson(response.data);

    final User user =
        UserMapper.userEntity(userResponse.userData, userResponse.token);

    return user;
  }

  // @override
  // List<UserServices> getUserServices(UserResponse userResponse) {
  //   List<UserServices> servicesUser = userResponse.userData.homeServices
  //       .map((e) => UserMapper.userServicesEntity(e))
  //       .toList();

  //   return servicesUser;
  // }
}
