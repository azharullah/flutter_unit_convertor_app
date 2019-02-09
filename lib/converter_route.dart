import 'package:flutter/material.dart';

import 'unit_widget.dart';

class ConverterRoute extends StatelessWidget {
  final List<UnitWidget> units;

  const ConverterRoute({@required this.units}) : assert(units != null);

  @override
  Widget build(BuildContext context) {
    final unitWidgets = units.map((UnitWidget unit) {
      return Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            )
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
