import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const Mybutton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 245, 242, 242),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(12),

        child: child,
      ),
    );
  }
}
