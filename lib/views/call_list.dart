// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers

import 'package:astu_comminuty/models/calls_model.dart';
import 'package:astu_comminuty/widgets/searchbar.dart';
import 'package:astu_comminuty/widgets/show_callLogs.dart';
import 'package:flutter/material.dart';

class call_list extends StatefulWidget {
  const call_list({Key? key}) : super(key: key);

  @override
  State<call_list> createState() => _call_listState();
}

class _call_listState extends State<call_list> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "call history ",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SearchBar(),
            Flexible(
                child: Container(
              child: ListView.builder(
                  itemCount: callLogs.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) {
                    String caller_Name = callLogs[index].callerName;
                    String call_Duration = callLogs[index].callDuration;
                    String caller_Img = callLogs[index].callerImg;
                    bool is_Voice = callLogs[index].isVoice;

                    return showcallLogs(
                        callerName: caller_Name,
                        callerImg: caller_Img,
                        callDuration: call_Duration,
                        isVoice: is_Voice);
                  })),
            ))
          ],
        ),
      ),
    );
  }
}
