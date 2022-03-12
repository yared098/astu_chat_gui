import 'package:astu_comminuty/models/notification_model.dart';

class message {
  String msg;
  String time;
  String msgType;
  bool isMe;
  bool isSeen;
  message(
      {required this.msg,
      required this.time,
      required this.msgType,
      required this.isMe,
      required this.isSeen});
}

message one = message(
    msg: "hey yared",
    time: "Monday 11:12 AM",
    isMe: true,
    isSeen: true,
    msgType: "text");
message two = message(
    msg: "hey dess are u okay",
    time: "Monday 11:13 AM",
    isMe: false,
    isSeen: true,
    msgType: "text");
message thre = message(
    msg: "yeah am okay are u in astu  ",
    time: "",
    isMe: true,
    isSeen: true,
    msgType: "image");
message four = message(
    msg: "yeah am okay are u in astu  ",
    time: "",
    isMe: true,
    isSeen: true,
    msgType: "image");

message five = message(
    msg: "hey dess are u okay",
    time: "Monday 11:13 AM",
    isMe: false,
    isSeen: true,
    msgType: "text");
message six = message(
    msg: "yeah am okay are u in astu  ",
    time: "",
    isMe: true,
    isSeen: true,
    msgType: "image");

message seven = message(
    msg: "01:59", time: "", isMe: false, isSeen: true, msgType: "voice");
message end = message(
    msg: "01:59", time: "", isMe: false, isSeen: true, msgType: "voice");
List<message> chat_send_rec = [one, two, thre, four, five, six, seven];
