import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onlineoperation/component/realtime_order.dart';

class KyodaeScreen extends StatefulWidget {
  const KyodaeScreen({super.key});

  @override
  State<KyodaeScreen> createState() => _KyodaeScreenState();
}

class _KyodaeScreenState extends State<KyodaeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0E0E0),
      body: RealtimeOrder(
        historyroute: '/kyodae/history',
        soldoutroute: '/kyodae/soldout',
      ),
    );
  }
}
