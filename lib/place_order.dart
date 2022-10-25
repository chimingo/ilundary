import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ilundary/order_details.dart';
class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
final TextEditingController clothType =TextEditingController();
final TextEditingController colourType =TextEditingController();
final  TextEditingController priceType =TextEditingController();
final TextEditingController quantityType =TextEditingController();
final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     //   toolbarHeight:100,
        
        title: const Text("Place Order"),
      ),
      backgroundColor: Colors.white,
     
        body:SafeArea(
          child: SingleChildScrollView(

              
              child: Column(
                children:[
                  Container(
                color:const Color.fromARGB(255, 144, 200, 249),
                width: double.infinity,
                padding: const EdgeInsets.only(left: 10.0, top: 20.0, bottom: 20.0, right: 10.0),
                margin: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
                child: const Text(
                  "Enter the details of your Laundry Order",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
                  
                  // const Padding(
                  //   padding: EdgeInsets.only(top:30,left: 10,right: 10, bottom: 15),
                  //   child: Text("Enter the details of your data laundry and click to proceed",
                  //   style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                  //   ),
                  // ),
                   const Divider(
                    color: Colors.lightBlue,
                    thickness: 2,
                  ),
                      
                  // const Padding(
                  // padding: EdgeInsets.all(2.0),
              
                 
                  // ),
                  //  Padding(
                  // padding: const EdgeInsets.all(15.0),
              
                  // child:TextFormField(
                  //   // validator: (value){
                  //   //   if()
                  //   //  },
          
                  // controller: clothType,
                  //   decoration:const InputDecoration(
                  //     border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  //     labelText:"cloth type",
            
                  //     labelStyle: TextStyle(color: Colors.blue),
                  //     hintText: "e.g T-Shirt"),
                      
                  //   ),
                    
                  // ),
                  const SizedBox(height:1),
                   Padding(
                padding: const EdgeInsets.all(18.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == "") {
                            return "Cloth type required";
                          }
                          if (value!.length < 3) {
                            return "must be greater than 3";
                          }
                          return null;
                        },
                        controller: clothType,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                          labelText: "Cloth type",
                        ),
                      ),
                   Padding(
                 padding: const EdgeInsets.all(8.0),
                
              
                   child:TextFormField(
                    // onChanged: (value) => print(value.length),
                    validator: ((value){
                      if(value==""){
                        return"cloth colour is required";
                      }
                      if (value!.length < 3){
                        return"colour must be greater than 2";
                      }
                      return null;
                      }),
                   controller: colourType,
                   decoration:const InputDecoration(
                      border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                     labelText:"cloth color",
                     labelStyle: TextStyle(color: Colors.blue),
                  
                       hintText: "e.g red and green"),
                      
                ),
               ),
              const SizedBox(height:1),
               Padding(
                  padding: const EdgeInsets.all(8.0),
              
                  child:TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                       return"price is required";
                      }
                      return null;
               },
                    controller: priceType,
                    inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.number,
                    
                    decoration:const InputDecoration(
                      border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      labelText:"Price ₦",
                      labelStyle: TextStyle(color: Colors.blue),
                  
                      hintText: " ₦"),
                      
                      
                ),
              ),
               Padding(
                  padding: const EdgeInsets.all(8.0),
              
                  child:TextFormField(
                     validator: (value){
                      if(value!.isEmpty){
                       return"price is required";
                      }
                      if(int.parse(value)<1){
                        return"quantity must be greater than 0";

                      }
                      return null;
                  },
                    
                    controller: quantityType,
                    inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.number,
                    //obscureText: true,
                    decoration:const InputDecoration(
                      
                      labelText:"Quantity",
                      labelStyle: TextStyle(fontStyle: FontStyle.italic),
                    
                  
                      ),
                      
                      
                ),
              ),
                    
                 ElevatedButton(
                  onPressed: (){
                    if (_formkey.currentState!.validate()) {
                      print("Cloth type${clothType.text}");
                      

                    print(clothType.text);
                    print(colourType.text);
                    print(priceType.text);
                    print(quantityType.text);
                    Navigator.push(context, MaterialPageRoute(builder:((context){ 
                      return OrderDetails(clothType:clothType.text,colourType:colourType.text);
                     


               }), 
                    ));
                    }
                  },
               child:const Text("Proceed"),
                 ),
               
                      
                    
                    ]),
            ),
                  
          
          ),
   ]
           )),) );
    
    
  }
}