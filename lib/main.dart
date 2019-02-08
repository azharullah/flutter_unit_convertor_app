import 'package:flutter/material.dart';
import 'categoryRoute.dart';

void main() => runApp(UnitConvertorApp());

class UnitConvertorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryRoute(),
    );
  }
}
