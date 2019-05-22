import 'package:flutter/material.dart';
import 'package:navigation_widget_sample/ListCell.dart';
import 'package:navigation_widget_sample/unit.dart';

final _backgroundColor = Colors.lightBlue[100];


class MeasureListRoute extends StatelessWidget {
  const MeasureListRoute();

  static const _listCellNames = <String>[
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


  Widget _buildListCellWidgets(List<Widget> listcells) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) => listcells[index],
        itemCount: listcells.length,
    );
  }

  /// Returns a list of mock [Unit]s.
  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors

    final listOfCell = <ListCell>[];
   
    for (var i = 0; i < _listCellNames.length; i++) {
      listOfCell.add(ListCell(
          name: _listCellNames[i],
          color: _baseColors[i],
          iconLocation: Icons.cake,
          units: _retrieveUnitList(_listCellNames[i])
        )
      );
    }

    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildListCellWidgets(listOfCell) ,
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}