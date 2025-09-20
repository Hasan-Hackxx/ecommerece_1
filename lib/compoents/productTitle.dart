import 'package:ecommerece_app1/models/product.dart';
import 'package:flutter/material.dart';

class Producttitle extends StatelessWidget {
  final Product product;
  const Producttitle({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(26),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image Item
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(25),

              child: Icon(Icons.favorite),
            ),
          ),
          SizedBox(height: 25),

          // name Item
          Text(
            product.name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          //description Item
          Text(
            product.desciprtion,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          //price Item
          Text(product.price.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
