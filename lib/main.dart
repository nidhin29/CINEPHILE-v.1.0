import 'package:app_3/Application/auth/auth_bloc.dart';
import 'package:app_3/Application/sign-in/sign_in_bloc.dart';
import 'package:app_3/Presentation/routes/router.dart';

import 'package:app_3/injectable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (ctx) => getit<SignInBloc>()
              ..add(const SignInEvent.authCheckRequested())),
        BlocProvider(create: (ctx) => getit<AuthBloc>()),
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
