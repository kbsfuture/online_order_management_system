import 'package:flutter/material.dart';
import 'package:onlineoperation/screen/entry_screen.dart';
import 'package:onlineoperation/screen/kyodae_history.dart';
import 'package:onlineoperation/screen/kyodae_screen.dart';
import 'package:onlineoperation/screen/kyodae_soldout.dart';
import 'package:onlineoperation/screen/segok_history.dart';
import 'package:onlineoperation/screen/segok_screen.dart';
import 'package:onlineoperation/screen/segok_soldout.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      '/': (context) => EntryScreen(),
      '/segok': (context) => SegokScreen(),
      '/segok/history': (context) => SegokHistory(),
      '/segok/soldout': (context) => SegokSoldout(),
      '/kyodae': (context) => KyodaeScreen(),
      '/kyodae/history': (context) => KyodaeHistory(),
      '/kyodae/soldout': (context) => KyodaeSoldout(),
    },
  ));
}
