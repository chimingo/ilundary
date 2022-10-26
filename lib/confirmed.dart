import 'package:flutter/material.dart';


class OrderIsConfirmed extends StatefulWidget {
  const OrderIsConfirmed({super.key});

  @override
  State<OrderIsConfirmed> createState() => _OrderIsConfirmedState();
}

class _OrderIsConfirmedState extends State<OrderIsConfirmed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Is Confirmed"),
      ),
    );
  }
}