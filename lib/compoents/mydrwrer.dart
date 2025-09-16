import 'package:flutter/material.dart';

class Mydrwrer extends StatefulWidget {
  const Mydrwrer({super.key});

  @override
  State<Mydrwrer> createState() => _MydrwrerState();
}

class _MydrwrerState extends State<Mydrwrer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(child: Icon(Icons.shopping_bag, size: 60)),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  'Shop',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Cart',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                leading: Icon(Icons.shopping_cart),
                onTap: () {
                  Navigator.pushNamed(context, '/cartPage/');
                },
              ),
            ],
          ),

          ListTile(
            title: Text(
              'Exit',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            leading: Icon(Icons.logout),
            onTap: () {
              Navigator.pushNamed(context, '/introPage/');
            },
          ),
        ],
      ),
    );
  }
}
