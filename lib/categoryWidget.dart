import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class CatergoryWidget extends StatelessWidget {
  final String name;
  final IconData icon;
  final ColorSwatch color;

  const CatergoryWidget(
      {Key key, @required this.name, @required this.icon, @required this.color})
      : assert(name != null),
        assert(icon != null),
        assert(color != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Container(
          height: _rowHeight,
          child: InkWell(
            borderRadius: _borderRadius,
            highlightColor: color,
            splashColor: color,
            onTap: () {
              debugPrint('Inkwell was tapped...');
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        icon,
                        size: 60,
                      ),
                    ),
                    Center(
                      child: Text(
                        name,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline,
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
