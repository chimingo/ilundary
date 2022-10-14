



import'package:flutter/material.dart';
import 'package:ilundary/lundry_data.dart';


void main() {
runApp(const MyApp());
}
  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          centerTitle: true,
          //leading: const Icon(Icons.menu),
          title: const Text("iLaundry"),
          actions: const[Icon(Icons.add)],
        ),
        drawer: const Drawer(),
       body: Center(
        child:Column(
          children: const [
          Text(
            "Counter",style:TextStyle(color:Colors.blue,fontSize:39,
            fontWeight: FontWeight.w900),
          ),
          AddCount(),

          ],
       ),
      ),
     ) ); 




  }
}


 
