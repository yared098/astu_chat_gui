//i'm tryna mimmick the data

class Call {
  final String callerName;
  final String callerImg;
  final bool isVoice;
  final String callDuration;

  Call(
      {required this.callerName,
      required this.callerImg,
      required this.isVoice,
      required this.callDuration});
}

Call firstCall = Call(
    callerName: "fuad mohamed",
    callDuration: "15 minit",
    callerImg: "assets/user.jpg",
    isVoice: true);
Call secondCall = Call(
    callerName: "yared fentahun",
    callDuration: "23 minite",
    callerImg: "assets/user2.jpeg",
    isVoice: false);
Call thirdCall = Call(
    callerName: "mr miki",
    callDuration: "30 minite",
    callerImg: "assets/user3.jpg",
    isVoice: false);
Call lastCall = Call(
    callerName: "wendirad  ",
    callDuration: "20 minite",
    callerImg: "assets/user.jpg",
    isVoice: true);

List<Call> callLogs = [firstCall, secondCall, thirdCall, lastCall];
