// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

//import 'package:ethio_sat_2/widget/naviget_drawer.dart';
import 'package:astu_comminuty/drawer_pages/naviget_drawer.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  static const String routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("profile setting"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("This is  profle setting")));
  }
}
