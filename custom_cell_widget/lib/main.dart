

import 'package:flutter/material.dart';
import 'package:custom_cell_widget/measurementList_route.dart';

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
      home: MeasureListRoute()
    );
  }
}