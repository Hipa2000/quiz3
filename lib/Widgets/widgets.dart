import 'package:flutter/material.dart';
import '../subjects/CS/ai/begin.dart';
import '../subjects/CS/computerArch/begin.dart';
import '../subjects/CS/exit/a/begin.dart';
import '../subjects/CS/exit/b/begin.dart';
import '../subjects/CS/exit/c/begin.dart';
import '../subjects/CS/logic cs/begin.dart';
import '../subjects/CS/network/begin.dart';
import '../subjects/all/Discrete/begin.dart';
import '../subjects/all/c+++.dart/begin.dart';
import '../subjects/all/db/begin.dart';
import '../subjects/all/softweer/begin.dart';
import '../subjects/cis/data recovery/begin.dart';
import '../subjects/cis/intraction/begin.dart';
import '../subjects/cis/logic/begin.dart';
import '../subjects/cis/wireless/begin.dart';
import '../subjects/mis/is/begin.dart';
import '../subjects/mis/issues/begin.dart';
import '../subjects/mis/knowledge management/begin.dart';
import '../subjects/mis/security/begin.dart';


class Column4 extends StatelessWidget {
  const Column4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile( tileColor: const Color(0xFF8CBCB9),
          title: const Text("c++",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
                Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Cblus(),)
          );
              }),),
              const SizedBox(
                      height: 20,
                    ),
        ListTile( tileColor: const Color(0xFF8CBCB9),
          title: const Text("softwer engineering",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
                Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Swe(),));
              }),
        ), const SizedBox(
                      height: 20,
                    ),

        ListTile( tileColor: const Color(0xFF8CBCB9),
          title: const Text("ديسكريت",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
                 Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Disc(),));
              }),
        ),
        const SizedBox(
                      height: 20,
                    ),

         ListTile( tileColor: const Color(0xFF8CBCB9),
          title: const Text("database",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
                Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const DB(),));
              }),
        ),
      ],
    );
  }
}

class Column3 extends StatelessWidget {
  const Column3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       ListTile( tileColor: const Color(0xFF8CBCB9),
          title: const Text("Computer Architecture",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
                  Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Com(),));
              }),
        ),
         const SizedBox(
                      height: 20,
                    ),

        ListTile(
           tileColor: const Color(0xFF8CBCB9),
          title: const Text("Networks",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
                Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Net(),));
              }),
        ),
        const SizedBox(
                      height: 20,
                    ),
         ListTile(
           tileColor: const Color(0xFF8CBCB9),
          title: const Text("AI_CS",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
                Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const AII(),));
              }),
        ),
        const SizedBox(
                      height: 20,
                    ),
        ListTile(
           tileColor: const Color(0xFF8CBCB9),
          title: const Text("Computer Logic",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
                Navigator.of(context).push(
              MaterialPageRoute(builder: (context) =>const Logcs(),));
              }),
        ), const SizedBox(
                      height: 20,
                    ),
                             ListTile(
           tileColor: const Color(0xFF8CBCB9),
          title: const Text("Exit Exam",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {
                showDialog(context: context, builder: (context)=>
                AlertDialog(
                  
                  backgroundColor:const Color(0xFF8CBCB9) ,
                  actionsPadding:const EdgeInsets.all(50) ,
                  title: const Text("MODELS",style: TextStyle(fontSize: 40)),
                  content: const Text("Chose your model",style: TextStyle(fontSize: 25),),
                  actions: [
                    ElevatedButton(onPressed: () {
                      Navigator.of(context).push(
                           MaterialPageRoute(builder: (context) =>const Aexit(),));
                                }, child:  const Text("A",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF210B2C)
                    ),
                    ),

                    ElevatedButton(onPressed: () {
                      Navigator.of(context).push(
                         MaterialPageRoute(builder: (context) =>const Bexit(),));           
                                  }, child: const Text("B",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                     style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF210B2C)
                    ),),
                    ElevatedButton(onPressed: () {
                       Navigator.of(context).push(
                         MaterialPageRoute(builder: (context) =>const Cexit(),));                    },
                     child: const Text("C",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF210B2C)
                    ),),
                  
                  ],

                )
                
                );
              }),
        ),

      ],
    );
  }
}

class Column2 extends StatelessWidget {
  const Column2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
           tileColor: const Color(0xFF8CBCB9),
          title: const Text("security",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
               Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Sec(),)); 
              }),
        ),
         const SizedBox(
                      height: 20,
                    ),
       ListTile(
           tileColor: const Color(0xFF8CBCB9),
          title: const Text("issues",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
              Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Iss(),));
              }),
        ),
         const SizedBox(
                      height: 20,
                    ),
        ListTile(
           tileColor: const Color(0xFF8CBCB9),
          title: const Text("information system",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
             Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Ins(),));
              }),
        ),
         const SizedBox(
                      height: 20,
                    ),
       ListTile(
           tileColor: const Color(0xFF8CBCB9),
          title: const Text("knowledge management",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
              Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Kno(),));
              }),
        ),
      ],
    );
  }
}

class Column1 extends StatelessWidget {
  const Column1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          tileColor: const Color(0xFF8CBCB9),
          title: const Text("interaction",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white) ,),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {
              Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Inter(),)
          );



              }),
        ),
         const SizedBox(
                      height: 20,
                    ),
        ListTile(
           tileColor: const Color(0xFF8CBCB9),
          title: const Text("logic",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {
            Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Log(),)
          );
              }),
        ),
         const SizedBox(
                      height: 20,
                    ),
       ListTile(
           tileColor: const Color(0xFF8CBCB9),
          title: const Text("ويرلس",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded), onPressed: () {
            Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Wir(),)
          );              }),
        ),const SizedBox(height: 20, ),
       ListTile(
           tileColor: const Color(0xFF8CBCB9),
          title: const Text("استرجاع",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.white)),
          subtitle: const Text("Tap on the arrow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          leading: const Icon(Icons.computer),
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {
             Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>const Drec(),)
          );              }),
        ),

        
      ],
    );
  }
}
