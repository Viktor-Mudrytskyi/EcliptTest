import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_eclipt/service/di_service.dart';
import 'package:test_task_eclipt/theme/app_theme.dart';
import 'package:test_task_eclipt/theme/resources.dart';
import 'package:test_task_eclipt/view/common/stack_loader.dart';
import 'package:test_task_eclipt/view/global/bloc/auth/auth_bloc.dart';
import 'package:test_task_eclipt/view/global/bloc/loader_overlay/loader_overlay_cubit.dart';
import 'package:test_task_eclipt/view/splash/splash_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  final LoaderOverlayCubit _loaderOverlayCubit = LoaderOverlayCubit();
  late final AuthBloc _authBloc;

  @override
  void initState() {
    _authBloc = AuthBloc(
      authRepo: DiService.get(),
      sharedPrefService: DiService.get(),
      loaderOverlayCubit: _loaderOverlayCubit,
      navigatorKey: _navigatorKey,
    );
    SchedulerBinding.instance.addPostFrameCallback((_) {
      precacheImage(const AssetImage(AppImages.homeBg), context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _loaderOverlayCubit),
        BlocProvider(create: (context) => _authBloc),
      ],
      child: MaterialApp(
        navigatorKey: _navigatorKey,
        theme: AppTheme.lightTheme,
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return BlocBuilder<LoaderOverlayCubit, LoaderOverlayState>(
            bloc: _loaderOverlayCubit,
            builder: (context, state) {
              return StackLoader(isLoading: state.isLoading, child: child!);
            },
          );
        },
      ),
    );
  }
}
