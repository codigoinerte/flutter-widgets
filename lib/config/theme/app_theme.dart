

import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme{
  final int selectedColor;
  final bool isDarmode;

  AppTheme({
    this.selectedColor = 0,
    this.isDarmode = false
  })
  :assert( selectedColor >= 0, 'Selected color must be greater then 0' ),
  assert( selectedColor < colorList.length, 'Selected color must be less or equal than ${colorList.length-1}' );

  ThemeData getTheme()=> ThemeData(
    useMaterial3: true,
    brightness: this.isDarmode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false
    ),    
  );

  // método que sirve para copiar clases
  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkmode
  }) => AppTheme(
    selectedColor:  selectedColor ?? this.selectedColor,
    isDarmode: isDarkmode ?? this.isDarmode
  );
}