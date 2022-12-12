import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onlineoperation/component/order_history.dart';

class SegokHistory extends StatelessWidget {
  const SegokHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFE0E0E0), body: OrderHistory());
  }
}
