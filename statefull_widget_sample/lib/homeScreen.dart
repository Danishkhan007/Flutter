import 'package:flutter/material.dart';
import 'dart:math';


class HomeScreen extends StatefulWidget {
  final String title;
  final String text;
  HomeScreen( {Key key, this.title, Key titleText, this.text});

  @override
  createState() => _HomeScreenState();
}

class _HomeScreenState extends State <HomeScreen> {

  List colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();
  int index = 0;
  var _color = Colors.purple;


  Color generateRandomColor() {
    index = random.nextInt(3);

    return colors[index];
  }

  @override
  Widget build(BuildContext context){
    return Center (
      child: FlatButton(
          onPressed: () {
            print("Color changed");
            setState(() {
              _color = generateRandomColor();
            });
          },
          color: _color,
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
      ),
    );
  }
}