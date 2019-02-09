import 'package:meta/meta.dart';

class UnitWidget {
  final String name;
  final double conversion;

  const UnitWidget({@required this.name, @required this.conversion})
      : assert(name != null),
        assert(conversion != null);

  UnitWidget.fromJson(Map jsonMap)
      : assert(jsonMap['name'] != null),
        assert(jsonMap['conversion'] ! -null),
        name = jsonMap['name'],
        conversion = jsonMap['conversion'].toDouble();
}
