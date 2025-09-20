import 'package:ecommerece_app1/models/product.dart';
import 'package:ecommerece_app1/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Producttitle extends StatelessWidget {
  final Product product;
  const Producttitle({super.key, required this.product});

  void addMethod(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Are you sure you want to add this to cart..!'),
        actions: [
          MaterialButton(
            onPressed: () async {
              Navigator.pop(context);
              context.read<Shop>().addItemtocart(product);
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.all(25),

                  child: Image.asset(product.imagePath),
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
              Text(
                product.desciprtion,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
            ],
          ),
          // image Item

          //description Item

          //price Item
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$' + product.price.toStringAsFixed(2),
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              SizedBox(width: 50),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: IconButton(
                  onPressed: () {
                    addMethod(context);
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
