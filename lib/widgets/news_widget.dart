// ignore_for_file: avoid_unnecessary_containers

import 'package:astu_comminuty/models/chat_models.dart';
import 'package:astu_comminuty/views/message.dart';
import 'package:astu_comminuty/widgets/custom_listTile.dart';

import 'package:flutter/material.dart';

class news_reading_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: recent.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                print(index.toString());
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return messageScreen();
                }));
              },
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomListTile(
                    // imgUrl: "assets/yared.jpeg",
                    imgUrl: recent[index].imgUrl,
                    message: recent[index].message,
                    active: recent[index].active,
                    lastActive: recent[index].lastActive,
                    sender: recent[index].sender,
                  )),
            );
          },
        ),
      ),
    );
  }
}
