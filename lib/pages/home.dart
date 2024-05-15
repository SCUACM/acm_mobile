//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< Updated upstream
      appBar: AppBar(
        title: const Text("SCU ACM")
=======
      appBar: AppBar(title: const Text("SCU ACM")),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.02),
                child: const Text(
                  "Welcome, Max! 👋",
                  style: TextStyle(fontSize: 26),
                  textAlign: TextAlign.left,
                )),
          ),
          Column(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Row(children:[
                Expanded(
                  flex: 4, // takes 30% of available width 
                  child: Column(mainAxisAlignment: MainAxisAlignment.start, 
                  
                  children: [
                    Text("Full Stack Workshop", style: TextStyle(fontSize: 24), maxLines: 4, softWrap: true,),
                    SizedBox(height: 20),
                    Flexible(child: Text("Mon Jan 1 - 5:00pm - SCDI 1302", style: TextStyle(fontSize: 20), maxLines: 4, softWrap: true,))
                      
                  //ADD TAGS
                ]),
                ),
                Expanded(
                  flex: 5,
                  child: Align(alignment: Alignment.topCenter, child: Image.asset('assets/images/flyer1.png')),
                )
              ]),
              )
            ],
          ),
          //Expanded(child: ScrollableEventWidget()),
          // Use ScrollableEventWidget here
        ],
>>>>>>> Stashed changes
      ),
      body: Center(
        child: Text("Welcome to the SCU ACM app!")
      )
    );
  }
}