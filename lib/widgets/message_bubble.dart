import 'package:astu_comminuty/utils/colors.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  var darkBlueColor = const Color(0xff2066FE);
  var lightBlueColor = Colors.blueAccent;
  final String msg;
  final String time;
  final String msgType;
  final bool isMe;
  final bool isSeen;

  ChatBubble(
      {Key? key,
      required this.msg,
      required this.time,
      required this.msgType,
      required this.isMe,
      required this.isSeen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    // Widgets message bubble, image bubble and voice note bubble

    //messsage bubble
    _buildMessageBubble({String? message, required bool isMe}) {
      return Container(
        padding: const EdgeInsets.only(left: 10, top: 18),
        margin: isMe
            ? const EdgeInsets.only(top: 8, bottom: 8, left: 200)
            : const EdgeInsets.only(top: 8, bottom: 8, right: 200),
        height: height * 0.07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: isMe ? Colors.black12 : Colors.white,
            gradient: isMe
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [lightBlueColor, darkBlueColor])
                : const LinearGradient(
                    colors: [Colors.black12, Colors.black12])),
        child: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(
            message!,
            style:
                TextStyle(color: txtColor, fontFamily: "MADType", fontSize: 17),
          ),
        ),
      );
    }

    //image bubble
    _buildImageBubble({String? message, required bool isMe}) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, top: 18),
            margin: isMe
                ? const EdgeInsets.only(top: 8, bottom: 8, left: 150)
                : const EdgeInsets.only(top: 8, bottom: 8, right: 200),
            height: height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: isMe ? Colors.black12 : Colors.white,
                gradient: isMe
                    ? LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [lightBlueColor, darkBlueColor])
                    : const LinearGradient(
                        colors: [Colors.black12, Colors.black12])),
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                message!,
                style: TextStyle(
                    color: txtColor, fontFamily: "MADType", fontSize: 17),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/female1.jpeg"))),
          )
        ],
      );
    }

    //voice note bubble
    _buildVoiceBubble({String? message, required bool isMe}) {
      return Container(
          padding: const EdgeInsets.only(right: 10),
          alignment: Alignment.centerLeft,
          margin: isMe
              ? const EdgeInsets.only(top: 8, bottom: 8, left: 100)
              : const EdgeInsets.only(top: 8, bottom: 8, right: 120),
          height: height * 0.07,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: isMe
                  ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [lightBlueColor, darkBlueColor])
                  : const LinearGradient(
                      colors: [Colors.black12, Colors.black12])),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.play_circle_fill_outlined,
                    color: txtColor,
                  ),
                  onPressed: () {},
                ),
                Expanded(
                    child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        color: darkBlueColor,
                      ),
                    ),
                    Positioned(
                      top: 8,
                      child: Container(
                        height: 10,
                        width: 15,
                        decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    message!,
                    style: TextStyle(color: txtColor, fontSize: 12),
                  ),
                ),
              ],
            ),
          ));
    }

    return Container(
      //all i did here is multi tenary operator to check if the messages is text meesage or image or voice note
      child: msgType == "text"
          ? _buildMessageBubble(isMe: isMe, message: msg)
          : msgType == "image"
              ? _buildImageBubble(isMe: isMe, message: msg)
              : _buildVoiceBubble(message: msg, isMe: isMe),
    );
  }
}
