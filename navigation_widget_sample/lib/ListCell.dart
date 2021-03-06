import 'package:flutter/material.dart';
import 'package:navigation_widget_sample/unit.dart';
import 'package:navigation_widget_sample/converter_screen.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight/2);
/// A custom [ListCell] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.

/// Constant for row height and border radius

class ListCell extends StatelessWidget {

  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
  final List<Unit> units;


  // constructor for list cell
  const ListCell({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
    @required this.units,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        assert(units != null),
      super(key: key);


  /// Navigates to the [ConverterScreen].
  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text(
              name,
              style: Theme.of(context).textTheme.display1,
            ),
            centerTitle: true,
            backgroundColor: color,
          ),
          body: ConverterScreen(
            color: color,
            name: name,
            units: units,
          ),
        );
      },
    ));  }

  /// Builds a custom widget that shows [ListCell] information.
  ///
  /// This information includes the icon, name, and color for the [ListCell].

  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,

          // We can use either the () => function() or the () { function(); }
          // syntax.
          onTap: () => _navigateToConverter(context),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // There are two ways to denote a list: `[]` and `List()`.
              // Prefer to use the literal syntax, i.e. `[]`, instead of `List()`.
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}