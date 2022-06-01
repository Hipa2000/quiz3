import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzapp/bloc/cubitApp/cubit.dart';
import 'package:quizzapp/bloc/cubitApp/state.dart';
import 'package:quizzapp/network/sharedPrefrence.dart';
import 'package:quizzapp/screens/Login.dart';
import 'package:quizzapp/screens/SignUp.dart';
import 'package:quizzapp/screens/newHome.dart';
import 'package:quizzapp/screens/startpage.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(
        providers: [
        BlocProvider(
        create: (BuildContext context) => SocialCubit()..getUserData(),
    ),
    ],
    child: BlocConsumer<SocialCubit, SocialStates>(
    listener: (context, state) {},
    builder: (context, state) {
    return MaterialApp(
      theme: ThemeData(textTheme: const TextTheme(headline1: TextStyle())),
      debugShowCheckedModeBanner: false,


      routes: ({
        "MyHomePage": (context) => const MyHomePage(),
        "startPage": (context) =>  startPage(),
        "Loginpage":(context) =>  Loginpage(),
        "SignupPage":(context) =>  SignupPage(),
       
         
      }),
      initialRoute: "startPage",
    );
  }
    ));
  }
}

