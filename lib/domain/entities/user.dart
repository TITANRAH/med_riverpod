import 'package:medismart_river/domain/entities/user_services.dart';



class User {
  final String? token;
  final int? userId;
  final int? personId;
  final String? identifier;
  final int? id;
  final String? name;
  final String? firstLastName;
  final String? secondLastName;
  final String? email;
  final String? phoneNumber;
  final String? mobilePhoneNumber;
  final DateTime? birthDate;
  final String? gender;
  final dynamic address;
  final String? foresight;
  final int? timeZone;
  final String? allergies;
  final String? diseases;
  final String? medicines;
  final String? surgeries;
  final String? habits;
  final String? status;
  final int? idCliente;
  final List<UserServices>? userServices;

  User({
    this.token,
    this.userId,
    this.personId,
    this.identifier,
    this.id,
    this.name,
    this.firstLastName,
    this.secondLastName,
    this.email,
    this.phoneNumber,
    this.mobilePhoneNumber,
    this.birthDate,
    this.gender,
    this.address,
    this.foresight,
    this.timeZone,
    this.allergies,
    this.diseases,
    this.medicines,
    this.surgeries,
    this.habits,
    this.status,
    this.idCliente,
    this.userServices,
  });
}
