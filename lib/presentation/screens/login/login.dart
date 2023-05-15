import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/entities/user.dart';
import '../../providers/providers.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const name = 'login';
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  void initState() {
    super.initState();

    ref.read(userInfoProvider.notifier).loadUser('16724918-3', 'Aa123456');

   
  }

  @override
  Widget build(BuildContext context) {
    final User user = ref.watch(userInfoProvider);

    return Scaffold(
      body: Center(
        child: Column(children: [
       ...user.userServices!.map((e) => Text(e.texto!))
        ],),
      ),
      
    );
  }
}
