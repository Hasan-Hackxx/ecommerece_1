import 'package:ecommerece_app1/models/product.dart';
import 'package:flutter/material.dart';

class Producttitle extends StatelessWidget {
  final Product product;
  const Producttitle({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // image Item
          Icon(Icons.favorite),

          // name Item
          Text(product.name),

          //description Item
          Text(product.desciprtion),
          //price Item
          Text(product.price.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
