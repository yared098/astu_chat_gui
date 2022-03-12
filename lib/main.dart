import 'package:astu_comminuty/home.dart';
import 'package:astu_comminuty/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    //Set themedata darkMode and LightMode
    theme: ThemeData(
      canvasColor: bkgrdColor,
    ),
  ));
}
