import 'package:ecommerece_app1/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    Product(name: 'product 1', price: 999.9, desciprtion: ' Item description'),
    Product(name: 'product 2', price: 999.9, desciprtion: ' Item description'),
    Product(name: 'product 3', price: 999.9, desciprtion: ' Item description'),
    Product(name: 'product 4', price: 999.9, desciprtion: ' Item description'),
  ];

  // user cart
  List<Product> _cart = [];

  // get poducts
  List<Product> get shop => _shop;

  // get cart
  List<Product> get cart => _cart;

  //add items to list
  void addItemtocart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove items from list
  void removeItemfromcart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
