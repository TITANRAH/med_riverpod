// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:medismart_river/domain/entities/user_services.dart';
// import 'package:medismart_river/infrastructure/models/user_response.dart';

// import '../user/user_repository_provider.dart';

// final userServicesInfoProvider =
//     StateNotifierProvider<UserServicesNotifier, List<UserServices>>((ref) {
//   final userRepository = ref.watch(userRepositoryProvider);

//   return UserServicesNotifier(
//       getUserServicesCallback: userRepository.getUserServices);
// });

// typedef GetUserServicesCallback = List<UserServices> Function(
//     UserResponse userResponse);

// class UserServicesNotifier extends StateNotifier<List<UserServices>> {

//   final GetUserServicesCallback getUserServicesCallback;
//   UserServicesNotifier({required this.getUserServicesCallback}) : super([]);

//   Future<void> loadServices(UserResponse? userResponse) async {
//     final List<UserServices> services = getUserServicesCallback(userResponse!);

//     state = services;
//   }
// }
