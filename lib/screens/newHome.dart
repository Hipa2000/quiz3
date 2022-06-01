import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quizzapp/helper/screen_Navi.dart';
import 'package:quizzapp/screens/Login.dart';


import '../Widgets/widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> myTopics = [
      const Text(
        "CIS",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: 'Lobster'),
      ),
      const Text(
        "MIS",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: 'Lobster'),
      ),
      const Text(
        "CS",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: 'Lobster'),
      ),
      const Text(
        "ALL",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: 'Lobster'),
      ),
    ];
    return DefaultTabController(
      
        length: 4,
        child: Scaffold(
           backgroundColor:const Color(0xFF210B2C),
          appBar: AppBar(
             backgroundColor: const Color(0xFF8D6A9F),
           title: const Text("Chose your topic",style: TextStyle(fontFamily: 'Lobster',color: Colors.white,fontSize: 20),),
            actions: [
              IconButton(
                  icon:const Icon(Icons.logout),
                onPressed: () {
              FirebaseAuth.instance.signOut();
              changeScreenReplacement(context,Loginpage());
                },
              ),
            ],
            // bottom:
          ),
          body: 
           Container(     
            decoration: BoxDecoration(
                //color: const Color.fromARGB(255, 169, 182, 49),
                borderRadius: BorderRadius.circular(5),),
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.black,
                  child: TabBar(
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.black,
                      indicator: BoxDecoration(
                        color: const Color(0xFF8CBCB9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      tabs: myTopics),
                ),
                const Expanded(
                  child: TabBarView(children: [
                    Column1(),
                    Column2(),
                    Column3(),
                    Column4(),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }

}



  



