import 'package:ecommerece_app1/models/product.dart';
import 'package:ecommerece_app1/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  void removeitem(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Are you sure you want to remove this from cart..!'),
        actions: [
          MaterialButton(
            onPressed: () async {
              Navigator.pop(context);
              context.read<Shop>().removeItemfromcart(product);
            },
            child: Text('yes'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('cancel'),
          ),
        ],
      ),
    );
  }

  void byuproduct(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(
          'User want to pay. Connect user to app payment backend..',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart Page'),
        backgroundColor: const Color.fromARGB(255, 199, 198, 198),
      ),
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
                ? Center(child: Text('Your cart is Empty'))
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final product = cart[index];

                      return ListTile(
                        title: Text(product.name),
                        subtitle: Text(product.price.toString()),
                        trailing: IconButton(
                          onPressed: () {
                            removeitem(context, product);
                          },
                          icon: Icon(Icons.remove),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () {
                  byuproduct(context);
                },
                icon: Text('Buy Now'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
