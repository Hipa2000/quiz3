// ignore_for_file: deprecated_member_use

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quizzapp/bloc/cubitRegister/cubit.dart';
import 'package:quizzapp/bloc/cubitRegister/state.dart';

// ignore: must_be_immutable
class SignupPage extends StatelessWidget {
   SignupPage({Key? key}) : super(key: key);
   var formKeyGuide = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   BlocProvider(
      create: (BuildContext context) => SocialRegisterCubit(),
      child: BlocConsumer<SocialRegisterCubit, SocialRegisterStates>(
        listener: (context, state) {
          if (state is SocialCreateUserErrorState) {
            // Navigator.pop(context);
            Fluttertoast.showToast(msg: state.error.toString());
          }
          if (state is SocialCreateUserSuccessState) {
            Fluttertoast.showToast(msg: "create user succesfully");
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, state) {
          return Container(
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('imagess/creat.jpeg.jpeg'),
                fit: BoxFit.fill)),

            child: Scaffold(appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
              backgroundColor: Colors.transparent,
              body:
              Stack(children: [
                SingleChildScrollView(
                    child: Form(
                      key: formKeyGuide,
                      child: Container(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.40,right: 35,left: 35),
                        child: Column(children:  [
                          TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100
                                ,filled: true,
                                hintText: 'Name',
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                            ),),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100
                                ,filled: true,
                                hintText: 'Email',
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                            ),

                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100
                                  ,filled: true,
                                  hintText: 'Password',
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                              )
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                              controller: phoneController,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100
                                  ,filled: true,
                                  hintText: 'phone',
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                              )
                          ),
                          const SizedBox(
                              height: 40
                          ),
                          ConditionalBuilder(
                            condition: state is! SocialRegisterLoadingState,
                            fallback: (context) =>
                                const Center(child: CircularProgressIndicator()),
                            builder: (context) => Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 10),
                              child: RaisedButton(
                                onPressed: () {
                                  if (formKeyGuide.currentState!.validate()) {
                                    SocialRegisterCubit.get(context).userRegister(
                                      name: nameController.text,
                                      email: emailController.text,
                                      password: passwordController.text,
                                      phone: phoneController.text,
                                    );
                                  }
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0)),
                                textColor: Colors.white,
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(80.0),
                                    ),
                                  padding: const EdgeInsets.all(0),
                                  child: const Text(
                                    "SIGN UP",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),


                       /*   Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Sign Up',style: TextStyle(fontSize: 27,fontFamily: 'Lobster',
                                  fontWeight: FontWeight.w700,color: Color(0xff4c505b))
                              ),
                              CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Color(0xffdac9bf),
                                  child: IconButton(color:Colors.white,

                                    icon: Icon(Icons.arrow_forward),onPressed: null,
                                  ))],
                          ),*/
                          const SizedBox(
                              height: 40
                          ),

                        ],),

                      ),
                    ))
              ],
              ),

            ),

          );
        },
      ),
    );

       
  }
}