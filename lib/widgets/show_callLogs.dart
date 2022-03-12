// ignore_for_file: prefer_const_constructors

import 'package:astu_comminuty/utils/colors.dart';
import 'package:flutter/material.dart';

class showcallLogs extends StatelessWidget {
  final String callerName;
  final String callerImg;
  final bool isVoice;
  final String callDuration;

  showcallLogs(
      {required this.callerName,
      required this.callerImg,
      required this.callDuration,
      required this.isVoice});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.10,
      child: ListTile(
        leading: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(callerImg))),
          child: isVoice == true
              ? Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: darkBlueColor,
                  ),
                )
              : null,
        ),
        title: Text(
          callerName,
          style: TextStyle(
              color: txtColor,
              fontWeight: FontWeight.w800,
              fontFamily: "MADType"),
        ),
        subtitle: Text(
          callDuration,
          style: TextStyle(color: blackText, fontFamily: "MADType"),
        ),
        trailing: Text(
          callDuration,
          style: TextStyle(color: blackText, fontFamily: "MADType"),
        ),
      ),
    );
  }
}
