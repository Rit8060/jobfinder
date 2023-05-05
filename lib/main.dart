//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobfinder/homepage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Poppins'),
    debugShowCheckedModeBanner: false,
    initialRoute: 'homepage',
    routes: {'homepage': (context) => homepage()},
  ));
}
