import 'package:flutter/material.dart';
import 'categoryWidget.dart';

void main() => runApp(UnitConvertorApp());

class UnitConvertorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Unit Convertor App'),
              backgroundColor: Colors.black,
            ),
            body: Center(child: CatergoryWidget())));
  }
}
