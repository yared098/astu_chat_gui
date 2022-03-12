class news_model {
  String name;
  String discription;
  String time;
  String view;
  String like;
  String imageUrl;
  news_model(
      {required this.name,
      required this.discription,
      required this.time,
      required this.view,
      required this.like,
      required this.imageUrl});
}

news_model model_news = news_model(
    name: "astu call fresh ",
    discription:
        '''EJSSD, Ethiopian Journal of Sciences & Sutainable Development gets accreditation by MoE
The journal went through rigorous steps to get this status. EJSSD has been in publication for more than a decade publishing more than sixteen issues. The journal has become a platform for researchers from academia and various researhc centers. Dr. Alemu Disassa, Vice President for Research and Technology Transfer, expreessed his gratitude for all those who contributed in this process, particularly international and local advisory board 
members, associate editors/editor-in chief and reviewers of all journals published in EJSSD.''',
    time: "04:00 pm",
    view: "30",
    like: "89",
    imageUrl: "assets/astu.png");
news_model model_news1 = news_model(
    name: "for all fresh ",
    discription: "for all fresh students",
    time: "04:00 pm",
    view: "30",
    like: "89",
    imageUrl: "assets/astu.png");
news_model model_news2 = news_model(
    name: "for all fresh ",
    discription: "for all fresh students",
    time: "04:00 pm",
    view: "30",
    like: "89",
    imageUrl: "assets/astu.png");
news_model model_news3 = news_model(
    name: "for all fresh ",
    discription: "for all fresh students",
    time: "04:00 pm",
    view: "30",
    like: "89",
    imageUrl: "assets/user2.jpeg");
news_model model_news4 = news_model(
    name: "for all fresh ",
    discription: '''BGI-XP sponsored internship orientation program held at ASTU

BGI Ethiopia conducted orientation event of fully sponsored BGI-XP internship program to 2nd year UG students on March 03, 2022 at ASTU. More than 600 UG 2nd year students attended the orientation event. Opening speech has been delivered by Dr Yadessa Melaku (DGAA of ASTU) and delegates from BGI company. A total of 80 internship vacant positions are allocated for BGI-XP internship program nationally of which BGI promised to offer about 20 positions to ASTU 2nd year students on competitive basis.''',
    time: "04:00 pm",
    view: "30",
    like: "89",
    imageUrl: "assets/yared.jpeg");
List<news_model> astu_news = [
  model_news,
  model_news1,
  model_news2,
  model_news3,
  model_news4
];
