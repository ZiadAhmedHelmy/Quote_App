import 'package:api_app/Screens/homePage.dart';
import 'package:api_app/Splash/splash.dart';
import 'package:api_app/viewModel/bloc/qouteCubit.dart';
import 'package:api_app/viewModel/network/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context) =>QuoteCubit()..getQuote()),
      ],
      child: MaterialApp(
        home: splashScreen(),
      ),
    );
  }
}
