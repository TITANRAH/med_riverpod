import 'package:flutter/widgets.dart';
import 'package:medismart_river/domain/entities/user_services.dart';
import 'package:medismart_river/infrastructure/models/user_data_response.dart';
import '../../domain/entities/user.dart';
import '../models/user_services_response.dart';

class UserMapper {
  static User userEntity(UserData userDataResponse, String userToken) => User(
        token: userToken,
        userId: userDataResponse.userId,
        personId: userDataResponse.personId,
        identifier: userDataResponse.identifier,
        id: userDataResponse.id,
        name: userDataResponse.name,
        firstLastName: userDataResponse.firstLastName,
        secondLastName: userDataResponse.secondLastName,
        email: userDataResponse.email,
        phoneNumber: userDataResponse.phoneNumber,
        mobilePhoneNumber: userDataResponse.mobilePhoneNumber,
        birthDate: userDataResponse.birthDate,
        gender: userDataResponse.gender,
        address: userDataResponse.address,
        foresight: userDataResponse.foresight,
        timeZone: userDataResponse.timeZone,
        allergies: userDataResponse.allergies,
        diseases: userDataResponse.diseases,
        medicines: userDataResponse.medicines,
        surgeries: userDataResponse.surgeries,
        habits: userDataResponse.habits,
        status: userDataResponse.status,
        idCliente: userDataResponse.idCliente,
        userServices: userDataResponse.homeServices.isNotEmpty ? userDataResponse.homeServices.map((e) => UserMapper.userServicesEntity(e)).toList() : null,
      );

  static UserServices userServicesEntity(HomeService userDataResponse) =>
      UserServices(
        cod: userDataResponse.cod,
        texto: userDataResponse.texto,
        subTexto: userDataResponse.subTexto,
        tipoServicio: userDataResponse.tipoServicio
      );
}
