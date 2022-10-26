

import 'package:flutter/material.dart';

import 'confirmed.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key, required this.clothType, required this.colourType, required this.price, required this.quantity});
  final String clothType;
  final String colourType;
  final int price;
  final int quantity;



  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Details"),
        centerTitle: true,
      ),
      body: SafeArea(
        child:ListView (
          children: [
            ListTile(
              leading:const Icon(Icons.girl),
              title: Text("Cloth type is ${widget.clothType} "),
              
            ),
             ListTile(
              leading:const Icon(Icons.color_lens),
              title: Text("Cloth colour is ${widget.colourType} "),
              
            ),
             ListTile(
              leading:const Icon(Icons.monetization_on),
              title: Text("Your price budget is ${widget.price} "),
              
            ),
             ListTile(
              leading:const Icon(Icons.production_quantity_limits_rounded),
              title: Text("Quantity of ${widget.quantity} "),
              
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderIsConfirmed()));
            }, child: const Text("Confirmed Order")),
          ],
        )
     ),
      );
  }
}