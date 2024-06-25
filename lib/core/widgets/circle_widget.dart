import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
   CircleWidget({
    super.key,required this.color,required this.child
  });

  Widget? child;
  Color? color;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child:child,
    );
  }
}