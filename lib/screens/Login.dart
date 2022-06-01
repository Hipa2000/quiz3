
// ignore_for_file: deprecated_member_use

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quizzapp/bloc/cubitLogin/cubit.dart';
import 'package:quizzapp/bloc/cubitLogin/state.dart';

import 'package:quizzapp/helper/screen_Navi.dart';
import 'package:quizzapp/network/sharedPrefrence.dart';
import 'package:quizzapp/screens/newHome.dart';

import 'SignUp.dart';

// ignore: must_be_immutable
class Loginpage extends StatelessWidget {
  Loginpage({Key? key}) : super(key: key);
  GlobalKey<FormState> validateKey = GlobalKey();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  String? email;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => SocialLoginCubit(),
        child: BlocConsumer<SocialLoginCubit, SocialLoginStates>(
            listener: (context, state) {
          if (state is SocialLoginSuccessState) {
            CacheHelper.saveData(
              key: 'uId',
              value: state.uId,
            ).then((value) {
             changeScreenReplacement(context, const MyHomePage());
            });
          }
        }, builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('imagess/log.jpeg.jpeg'), fit: BoxFit.fill)),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              backgroundColor: Colors.transparent,
              body: Stack(
                children: [
                  SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery
                                .of(context)
                                .size
                                .height * 0.5,
                            right: 35,
                            left: 35),
                        child: Form(
                          key: validateKey,
                          child: Column(
                            children: [
                              TextFormField(
                                  controller: emailController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'please enter your email address';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: 'Email',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              15)))),
                              const SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                  controller: passwordController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'please enter your email password';
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: 'Password',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              15)))),
                              const SizedBox(height: 40),


                                  ConditionalBuilder(
                                    condition: state is! SocialLoginLoadingState,
                                    fallback: (context) =>
                                        const Center(child: CircularProgressIndicator()),
                                    builder: (context) => Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerRight,
                                          margin:
                                          const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                                          child: RaisedButton(
                                            onPressed: () {
                                              if (validateKey.currentState!.validate()) {
                                                SocialLoginCubit.get(context).userLogin(
                                                  email: emailController.text,
                                                  password: passwordController.text,
                                                );
                                              }else{
                                                Fluttertoast.showToast(msg: "Username or Password is incorrect",backgroundColor: Colors.red);

                                              }
                                            },
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(80.0)),
                                            textColor: Colors.white,
                                            padding: const EdgeInsets.all(0),
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 50.0,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(80.0),
                                               ),
                                              padding: const EdgeInsets.all(0),
                                              child: const Text(
                                                "LOGIN",
                                                  style: TextStyle(
                                                      fontSize: 27,
                                                      fontFamily: 'Lobster',
                                                      fontWeight: FontWeight.w700,
                                                      color: Colors.black38)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  /*const Text('Sign in',
                                      style: TextStyle(
                                          fontSize: 27,
                                          fontFamily: 'Lobster',
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white)),
                                  CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Color(0xffdac9bf),
                                      child: IconButton(
                                          color: Colors.white,
                                          icon: Icon(Icons.arrow_forward),
                                          onPressed: () {
                                                if (validateKey.currentState!.validate()) {
                                                SocialLoginCubit.get(context).userLogin(
                                                  email: emailController.text,
                                                  password: passwordController.text,
                                                );
                                              }
                                          }
                                          }))*/

                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                       Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ));
                                      },
                                      child: const Text(
                                        "Create Account",
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontFamily: 'Lobster',
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          );
        })
    );
  }
}

