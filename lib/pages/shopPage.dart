import 'package:ecommerece_app1/compoents/mydrwrer.dart';
import 'package:flutter/material.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Shop page',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: const Color.fromARGB(255, 223, 221, 221),
      ),
      drawer: Mydrwrer(),
    );
  }
}
