

import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key, required String clothType, required String colourType});

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
          children: const [
            ListTile(
              leading:Icon(Icons.face)
              
            ),
          ],
        )
     ),
      );
  }
}