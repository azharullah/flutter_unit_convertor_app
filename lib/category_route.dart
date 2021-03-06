import 'package:flutter/material.dart';
import 'category_widget.dart';
import 'unit_widget.dart';

final _backgroundColor = Colors.teal[200];

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  List<UnitWidget> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return UnitWidget(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final categories = <CatergoryWidget>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(CatergoryWidget(
        name: _categoryNames[i],
        icon: Icons.play_arrow,
        color: _baseColors[i],
        units: _retrieveUnitList(_categoryNames[i]),
      ));
    }

    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: _buildCategoryWidgets(categories),
    );

    final appBar = AppBar(
      elevation: 6,
      title: Text(
        'Unit Converter',
        style: TextStyle(color: Colors.black, fontSize: 30),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
