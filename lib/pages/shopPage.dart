import 'package:ecommerece_app1/compoents/mydrwrer.dart';
import 'package:ecommerece_app1/compoents/productTitle.dart';
import 'package:ecommerece_app1/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

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
      body: ListView(
        children: [
          SizedBox(height: 25),
          Center(
            child: Text(
              'shoose one of these products to buy ',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
              // scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return Producttitle(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
