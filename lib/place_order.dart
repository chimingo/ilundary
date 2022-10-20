import 'package:flutter/material.dart';
class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      backgroundColor: Colors.white,
    //  appBar: AppBar(
        body:SafeArea(
          child: Column(
            children:[
            ElevatedButton(
              onPressed: (){
              Navigator.pop(context);
            }, 
            child:const Text("Return"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
          
              child:TextField(
                decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  labelText:"Email",
                  hintText: "e.g ashiobichioma@gmail.com"),

                ),
              ),
              const SizedBox(height: 20),
                Padding(
              padding: const EdgeInsets.all(8.0),
          
              child:TextFormField(
                obscureText: true,
                decoration:const InputDecoration(
                  border:OutlineInputBorder(),
                  labelText:"password",
                  prefixIcon: Icon(Icons.key),
                  hintText: "Enter strong password"),

            ),
          ),
          // const Padding(
          //     padding: EdgeInsets.all(10.5)),
          //   child:TextFormField(),
        



            

  ]
        
        ),
         ) );
    
  }
}