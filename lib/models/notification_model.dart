class Notification {
  final String userName;
  final String time;
  final String notType;

  final String userImg;

  Notification(
      {required this.userName,
      required this.time,
      required this.notType,
      required this.userImg});
}

Notification firstNotification = Notification(
    userName: "dess0988",
    time: "3m",
    notType: "friendReq",
    userImg: "assets/yared.jpeg");
Notification secondNotification = Notification(
    userName: "emanuel alem",
    time: "5m",
    notType: "payment",
    userImg: "assets/female1.jpeg");
Notification thirdNotification = Notification(
    userName: "fuad mohamed",
    time: "2d",
    notType: "friendReq",
    userImg: "assets/user2.jpeg");
Notification four = Notification(
    userName: "fuad mohamed",
    time: "2d",
    notType: "friendReq",
    userImg: "assets/user3.jpg");
Notification five = Notification(
    userName: "fuad mohamed",
    time: "2d",
    notType: "friendReq",
    userImg: "assets/yared.jpeg");

Notification six = Notification(
    userName: "emanuel alem",
    time: "5m",
    notType: "friendReq",
    userImg: "assets/user.jpg");
List<Notification> allNotification = [
  firstNotification,
  secondNotification,
  thirdNotification,
  four,
  five,
  six
];
