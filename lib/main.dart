import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/pages/sign_in/sign_in.dart';
import 'package:flutter_application_bloc/pages/welcome/bloc/welcome_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
   
      providers: [
        BlocProvider( 
            create: (BuildContext context) => WelcomeBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => WelcomeBloc(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, child) =>  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.white
            )
          ),
          home: const Welcome(),
          routes: {
            "signIn":(context)=> const SignIn(),
          },
        ),
      ),
    );
  }
}
