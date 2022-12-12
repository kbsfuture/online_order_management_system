import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Soldout extends StatelessWidget {
  const Soldout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
          width: 1200,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.circular(50),
          ),
          child: Text("json serialization")),
    );
  }
}
