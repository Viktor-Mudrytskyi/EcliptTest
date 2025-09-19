import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_eclipt/service/di_service.dart';
import 'package:test_task_eclipt/view/home/loading_screen.dart';
import 'package:test_task_eclipt/view/home/user/user_bloc.dart';
import 'package:test_task_eclipt/view/profile_set_up/profile_set_up_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserBloc(userRepo: DiService.get(), authRepository: DiService.get())
            ..add(const UserEvent.init()),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const LoadingScreen(),
            processing: (_) => const LoadingScreen(),
            profileSetUp: (_) => const ProfileSetUpScreen(),
            home: (home) =>
                const Scaffold(body: Center(child: Text('Home Screen'))),
          );
        },
      ),
    );
  }
}
