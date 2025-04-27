import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/dataHelper/cache_helper.dart';
import 'core/dataHelper/localData.dart';
import 'feauters/auth/presentation/registration.dart';
import 'feauters/home/cubit/homeCubit/cubit.dart';
import 'feauters/intro/introScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit>(create: (_) => UserCubit(DatabaseHelper())..loadUsers()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home:  CacheHelper.getBoolean(key: "login")!=null ? IntroScreen():const WelcomeScreen(),
      ),
    );
  }
}
