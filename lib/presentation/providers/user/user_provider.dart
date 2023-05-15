import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medismart_river/domain/entities/user.dart';
import 'package:medismart_river/presentation/providers/user/user_repository_provider.dart';

final userInfoProvider = StateNotifierProvider<UserNotifier, User>(
  (ref) {
    final userRepository = ref.watch(userRepositoryProvider);

    return UserNotifier(getUser: userRepository.getUser);
  },
);

typedef GetUserCallback = Future<User> Function(
    String userName, String password);

class UserNotifier extends StateNotifier<User> {
  final GetUserCallback getUser;
  UserNotifier({required this.getUser}) : super(User());

  Future<void> loadUser(String userName, String password) async {
    final user = await getUser(userName, password);
    state = user;
  }
}
