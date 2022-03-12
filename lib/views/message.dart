// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:astu_comminuty/models/messages_model.dart';
import 'package:astu_comminuty/utils/colors.dart';
import 'package:astu_comminuty/widgets/header.dart';
import 'package:astu_comminuty/widgets/message_bubble.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class messageScreen extends StatefulWidget {
  @override
  _messageScreenState createState() => _messageScreenState();
}

class _messageScreenState extends State<messageScreen> {
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Widget _chatBubbles({required String message, required bool isMe}) {
      return Container(
        padding: const EdgeInsets.only(left: 10, top: 18),
        margin: isMe
            ? const EdgeInsets.only(top: 8, bottom: 8, left: 100)
            : const EdgeInsets.only(top: 8, bottom: 8, right: 100),
        height: height * 0.07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: isMe ? Colors.black12 : Colors.white,
            gradient: isMe
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [lightBlueColor, darkBlueColor])
                : LinearGradient(colors: [Colors.black12, Colors.black12])),
        child: Text(
          message,
          style:
              TextStyle(color: txtColor, fontFamily: "MADType", fontSize: 17),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("yared098"),
          backgroundColor: bkgrdColor,
          actions: [
            IconButton(
              tooltip: "video call",
              icon: Icon(Icons.video_camera_back_sharp),
              onPressed: () {},
            ),
            RotatedBox(
              quarterTurns: 1,
              child: IconButton(
                tooltip: "voice call",
                icon: Icon(Icons.phone),
                onPressed: () {},
              ),
            ),
          ],
          elevation: 0,
        ),
        backgroundColor: bkgrdColor,
        body: Column(
          children: [
            Header(),
            Container(
              height: height * 0.05,
              child: Center(
                child: Text(
                  "sending and recieving text message here",
                  style: TextStyle(color: blackText, fontFamily: "MADType"),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 5, right: 5),
                color: bkgrdColor,
                child: ListView.builder(
                  itemCount: chat_send_rec.length,
                  itemBuilder: (BuildContext context, int index) {
                    final message = chat_send_rec[index].msg;
                    final isM = chat_send_rec[index].isMe;
                    final time = chat_send_rec[index].time;
                    final msgType = chat_send_rec[index].msgType;
                    final isSeen = chat_send_rec[index].isSeen;

                    return Column(
                      crossAxisAlignment: chat_send_rec[index].isMe
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        ChatBubble(
                          msg: message,
                          time: time,
                          msgType: msgType,
                          isMe: isM,
                          isSeen: isSeen,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              chat_send_rec[index].time,
                              style: TextStyle(
                                  color: blackText, fontFamily: "MADType"),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              color: Colors.black12,
              height: height * 0.07,
              child: Row(
                children: [
                  // Container(
                  //   height: 38,
                  //   width: 38,
                  //   decoration: BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       gradient: LinearGradient(
                  //           colors: [lightBlueColor, darkBlueColor])),
                  //   child: Center(
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(right: 10),
                  //       child: IconButton(
                  //         icon: Icon(Icons.add, color: Colors.white),
                  //         onPressed: () {},
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  IconButton(
                    icon: Icon(
                      Icons.add_circle,
                      color: txtColor,
                      size: 33,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.camera, color: blackText),
                    onPressed: () {},
                  ),
                  Expanded(
                      child: Container(
                    child: TextField(
                      style: TextStyle(color: txtColor, fontFamily: "MADType"),
                      controller: messageController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type something..",
                          hintStyle: TextStyle(
                              color: blackText, fontFamily: "MADType")),
                    ),
                  )),
                  InkWell(
                    onTap: () {
                      messageController.clear();
                    },
                    child: Container(
                      width: 40,
                      color: Color(0xFFFC6C22),
                      child: Center(
                        child: Icon(
                          Icons.send,
                          color: txtColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
