import 'package:flutter/material.dart';

final _borderRadius = BorderRadius.circular(_rowHeight/2);
/// A custom [ListCell] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.

/// Constant for row height and border radius
final _rowHeight = 100.0;

class ListCell extends StatelessWidget {

  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  // constructor for list cell
  const ListCell({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);


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
          onTap: () {
            print('You tapped me');
          },
          focusColor: Colors.limeAccent,
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