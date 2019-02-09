import 'package:flutter/material.dart';
import 'category_route.dart';

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
