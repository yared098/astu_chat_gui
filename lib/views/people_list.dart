// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:astu_comminuty/models/group_model.dart';
import 'package:astu_comminuty/utils/colors.dart';
import 'package:astu_comminuty/widgets/searchbar.dart';
import 'package:astu_comminuty/widgets/show_botom_sheet.dart';
import 'package:astu_comminuty/widgets/show_callLogs.dart';
import 'package:flutter/material.dart';

class people_page extends StatefulWidget {
  const people_page({Key? key}) : super(key: key);

  @override
  State<people_page> createState() => _people_pageState();
}

class _people_pageState extends State<people_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return show_bottom();
                });
          },
          tooltip: "Create new group",
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [lightBlueColor, darkBlueColor],
              ),
            ),
            child: Icon(
              Icons.plus_one,
              color: Colors.white,
            ),
          )),
      body: Container(
          child: Column(
        children: [
          Text(
            "group lists",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SearchBar(),
          Flexible(
              child: Container(
            child: ListView.builder(
                itemCount: group_models.length,
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) {
                  String g_name = group_models[index].group_name;
                  String g_admin = group_models[index].group_admin;
                  String g_link = group_models[index].group_link;
                  String g_member = group_models[index].group_members;
                  String g_image = group_models[index].group_img;

                  return showcallLogs(
                      callerName: g_name,
                      callerImg: g_image,
                      callDuration: g_member,
                      isVoice: true);
                })),
          )),
        ],
      )),
    );
  }
}
