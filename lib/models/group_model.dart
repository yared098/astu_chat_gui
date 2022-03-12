import 'dart:async';

class groupmodels {
  String group_name;
  String group_admin;
  String group_link;
  String group_members;
  String group_img;
  groupmodels(
      {required this.group_name,
      required this.group_admin,
      required this.group_link,
      required this.group_members,
      required this.group_img});
}

groupmodels g1 = groupmodels(
    group_name: "astu_fresh",
    group_admin: "yared098",
    group_link: "www.astufresh/1234",
    group_members: '90 members ',
    group_img: 'assets/user2.jpeg');
groupmodels g2 = groupmodels(
    group_name: "astu_1 _year",
    group_admin: "fuad moha",
    group_link: "fuad/123",
    group_members: "56 members",
    group_img: "assets/yared.jpeg");
groupmodels g3 = groupmodels(
    group_name: "astu_2_year",
    group_admin: "fuad moha",
    group_link: "fuad/123",
    group_members: "67  members",
    group_img: "assets/yared.jpeg");
groupmodels g4 = groupmodels(
    group_name: "astu_3_year",
    group_admin: "fuad moha",
    group_link: "fuad/123",
    group_members: "200 members",
    group_img: "assets/yared.jpeg");
groupmodels g5 = groupmodels(
    group_name: "astu_4_year",
    group_admin: "fuad moha",
    group_link: "fuad/123",
    group_members: "145 members",
    group_img: "assets/yared.jpeg");
groupmodels g6 = groupmodels(
    group_name: "ICPC_",
    group_admin: "fuad moha",
    group_link: "fuad/123",
    group_members: "145 members",
    group_img: "assets/yared.jpeg");
groupmodels g7 = groupmodels(
    group_name: "Astu_official",
    group_admin: "fuad moha",
    group_link: "fuad/123",
    group_members: "145 members",
    group_img: "assets/yared.jpeg");
groupmodels g8 = groupmodels(
    group_name: "CSEC_ASTU",
    group_admin: "fuad moha",
    group_link: "fuad/123",
    group_members: "145 members",
    group_img: "assets/yared.jpeg");
List<groupmodels> group_models = [g1, g2, g3, g4, g5, g6, g7, g8];
