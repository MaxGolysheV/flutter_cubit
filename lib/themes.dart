import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

//lib\assets\toa.jpg
// lib\assets\makuta.jpg

class CubitThemes
{
  int lightInc=1;
  int darkInc=2;
  int id=0;
  static final darkTheme =
      ThemeData(scaffoldBackgroundColor: Color.fromARGB(39,40,34, 80));
  
  String darkPath="lib/icons/makuta.jpg";

  static final lightTheme =
      ThemeData(scaffoldBackgroundColor: Color.fromARGB(255,255,255,255));

  String lightPath="lib/icons/toa.jpg";





}