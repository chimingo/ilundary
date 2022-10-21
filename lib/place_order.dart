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
      appBar: AppBar(
        title: const Text("Place Order"),
      ),
      backgroundColor: Colors.white,
     
        body:SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children:[
                const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text("Enter the details of your data laundry and click to proceed",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                  ),
                ),
                const Divider(
                  color: Colors.lightBlue,
                  thickness: 2,
                ),
          
                // const Padding(
                // padding: EdgeInsets.all(2.0),
            
               
                // ),
                const Padding(
                padding: EdgeInsets.all(2.0),
            
                child:TextField(
                  decoration:InputDecoration(
                    border:OutlineInputBorder(borderSide:BorderSide(width: 20.0) ),
                    labelText:"cloth type",
                    labelStyle: TextStyle(color: Colors.blue),
                    hintText: "e.g T-Shirt"),
          
                  ),
                ),
                const SizedBox(height: 20),
                  Padding(
                padding: const EdgeInsets.all(2.0),
            
                child:TextFormField(
                  decoration:const InputDecoration(
                    border:OutlineInputBorder(),
                    labelText:"cloth color",
                    labelStyle: TextStyle(color: Colors.blue),
                
                    hintText: "e.g red and green"),
          
              ),
            ),
            const SizedBox(height: 20),
             Padding(
                padding: const EdgeInsets.all(2.0),
            
                child:TextFormField(
                  keyboardType: TextInputType.number,
                  
                  decoration:const InputDecoration(
                    border:OutlineInputBorder(),
                    labelText:"Price ₦",
                    labelStyle: TextStyle(color: Colors.blue),
                
                    hintText: " ₦"),
                    
          
              ),
            ),
             Padding(
                padding: const EdgeInsets.all(2.0),
            
                child:TextFormField(
                  keyboardType: TextInputType.number,
                  //obscureText: true,
                  decoration:const InputDecoration(
                    
                    labelText:"quantity",
                    labelStyle: TextStyle(fontStyle: FontStyle.italic),
                  
                
                    ),
                    
          
              ),
            ),
                  
               ElevatedButton(
                onPressed: (){
                Navigator.pop(context);
             }, 
             child:const Text("Proceed"),
               ),
            
          
          
                  
                  ]),
          ),
         ) );
    
  }
}