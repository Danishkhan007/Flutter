

import 'package:flutter/material.dart';

//our custom cell
import 'package:custom_cell_widget/ListCell.dart';

// TODO: Pass this information into your custom [Category] widget
const _categoryName = 'Cold';
const _categoryIcon = Icons.ac_unit;
const _categoryColor = Colors.greenAccent;

/// The function that is called when main.dart is run.
void main() {
  runApp(UnitConverterApp());
}

/// This widget is the root of our application.
/// Currently, we just show one widget in our app.
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          // TODO: Determine what properties you'll need to pass into the widget
          child: ListCell(
            name: _categoryName,
            color: _categoryColor,
            iconLocation: _categoryIcon,
          ),
        ),
      ),
    );
  }
}