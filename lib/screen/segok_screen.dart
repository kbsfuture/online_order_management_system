import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onlineoperation/component/realtime_order.dart';

class SegokScreen extends StatefulWidget {
  const SegokScreen({super.key});

  @override
  State<SegokScreen> createState() => _SegokScreenState();
}

class _SegokScreenState extends State<SegokScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0E0E0),
      body: RealtimeOrder(
        historyroute: '/segok/history',
        soldoutroute: '/segok/soldout',
      ),
    );
  }
}
