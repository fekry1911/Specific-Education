import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'core/dataHelper/cache_helper.dart';
import 'core/dataHelper/localData.dart';
import 'feauters/auth/presentation/registration.dart';
import 'feauters/intro/introScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await CacheHelper.init();

  runApp(const MyApp());
}


