// ignore_for_file: prefer_const_constructors, camel_case_types

//import 'package:ethio_sat_2/widget/naviget_drawer.dart';
import 'package:astu_comminuty/models/news_model.dart';
import 'package:astu_comminuty/widgets/searchbar.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class news_widget_reading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Astu news"),
        ),
        //drawer: navigationDrawer(),
        body: Container(
          child: Column(
            children: [
              SearchBar(),
              Flexible(
                  child: Container(
                child: ListView.builder(
                    itemCount: astu_news.length,
                    itemBuilder: (BuildContext context, int index) {
                      var name = astu_news[index].name;
                      var dedc = astu_news[index].discription;
                      var time = astu_news[index].time;
                      var like = astu_news[index].like;
                      var img_url = astu_news[index].imageUrl;
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(img_url),
                                    radius: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        name,
                                        style: TextStyle(),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(dedc),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(time),
                                    Text(like),
                                    SizedBox(
                                      width: 20,
                                    )
                                  ]),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.thumb_up_rounded)),
                                SizedBox(
                                  width: 20,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.thumb_down_rounded)),
                                SizedBox(
                                  width: 20,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.share_rounded))
                              ]),
                            )
                          ]),
                        ),
                      );
                    }),
              ))
            ],
          ),
        ));
  }
}
