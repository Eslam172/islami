import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/screens/home_screen.dart';
import 'package:islami/shared/cubit/cubit.dart';
import 'package:islami/shared/my_bloc_observer.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,

          theme: ThemeData(
              primaryColor: const Color(0xff23D335),
            appBarTheme: const AppBarTheme(
              color: Colors.white,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarBrightness: Brightness.dark
              )
            )
          ),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
