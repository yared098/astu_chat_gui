class RecentChat {
  String imgUrl;
  String sender;
  String message;
  String lastActive;
  bool unread;
  bool active;

  RecentChat(
      {required this.imgUrl,
      required this.sender,
      required this.message,
      required this.unread,
      required this.lastActive,
      required this.active});
}

RecentChat one = RecentChat(
    imgUrl: "assets/female1.jpeg",
    sender: "yared0988",
    message: "how was class?",
    lastActive: "1m ago",
    active: true,
    unread: false);
RecentChat two = RecentChat(
    imgUrl: "assets/user3.jpg",
    sender: "Dess",
    message: "Where are you at?",
    lastActive: "50m ago",
    active: false,
    unread: true);
RecentChat three = RecentChat(
    imgUrl: "assets/user3.jpg",
    sender: "Eko",
    message: "Can we meet tommorrow?",
    lastActive: "1d ago",
    active: true,
    unread: false);
RecentChat four = RecentChat(
    imgUrl: "assets/user2.jpeg",
    sender: "Mika",
    message: "How was your day?",
    lastActive: "22h ago",
    active: false,
    unread: true);
RecentChat five = RecentChat(
    imgUrl: "assets/yared.jpeg",
    sender: "Ashe wend",
    message: "I think m pregnant",
    lastActive: "5d ago",
    active: false,
    unread: false);
RecentChat six = RecentChat(
    imgUrl: "assets/female1.jpeg",
    sender: "nafiyad",
    message: "good by dess",
    lastActive: "1w ago",
    unread: true,
    active: true);
RecentChat seven = RecentChat(
    imgUrl: "assets/female1.jpeg",
    sender: "chapi mengie",
    message: "good by dess",
    lastActive: "1w ago",
    unread: true,
    active: true);
List<RecentChat> recent = [one, two, three, four, five, six, seven];
