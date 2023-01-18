import 'dart:convert';

import 'package:flutter/material.dart';
import 'colors.dart' as colors;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Training",
                style: TextStyle(
                    fontSize: 30,
                    color: colors.AppColor.homePageTitle,
                    fontWeight: FontWeight.w700),
              ),
              Expanded(child: Container()),
              Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: colors.AppColor.homePageIcons,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.calendar_today_outlined,
                  size: 20, color: colors.AppColor.homePageIcons),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.arrow_forward_ios,
                  size: 20, color: colors.AppColor.homePageIcons)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                "Your program",
                style: TextStyle(
                    fontSize: 20,
                    color: colors.AppColor.homePageSubtitle,
                    fontWeight: FontWeight.w600),
              ),
              Expanded(child: Container()),
              Text(
                "Details",
                style: TextStyle(
                    fontSize: 20,
                    color: colors.AppColor.homePageDetail,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward,
                size: 20,
                color: colors.AppColor.homePageIcons,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    colors.AppColor.gradientFirst.withOpacity(0.8),
                    colors.AppColor.gradientSecond.withOpacity(0.9)
                  ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(80)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(5, 10),
                        blurRadius: 10,
                        color: colors.AppColor.gradientSecond.withOpacity(0.2))
                  ]),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Workout",
                      style: TextStyle(
                          color: colors.AppColor.homePageContainerTextSmall,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                        color: colors.AppColor.homePageContainerTextBig,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        color: colors.AppColor.homePageContainerTextBig,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer_sharp,
                              size: 20,
                              color: colors.AppColor.homePageContainerTextSmall,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "60 min",
                              style: TextStyle(
                                  color: colors
                                      .AppColor.homePageContainerTextSmall,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                    color: colors.AppColor.gradientFirst,
                                    blurRadius: 10,
                                    offset: Offset(4, 8))
                              ]),
                          child: Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 60,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 30),
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/card.jpg"),
                          fit: BoxFit.fill),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 40,
                            offset: Offset(8, 10),
                            color: colors.AppColor.gradientSecond
                                .withOpacity(0.3)),
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(-1, -5),
                            color:
                                colors.AppColor.gradientSecond.withOpacity(0.3))
                      ]),
                ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(right: 200, bottom: 30),
                  //color: Colors.redAccent.withOpacity(0.2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/figure.png"),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 130),
                  width: double.maxFinite,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "You are doing great",
                        style: TextStyle(
                            color: colors.AppColor.homePageDetail,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "keep it up",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "stick to your plan",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "Area of focus",
                style: TextStyle(
                    fontSize: 25,
                    color: colors.AppColor.homePageTitle,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Expanded(
            child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: (info.length.toDouble() / 2).toInt(),
                    itemBuilder: (_, i) {
                      int a = 2 * i;
                      int b = 2 * i + 1;
                      return Row(
                        children: [
                          Container(
                            height: 170,
                            width: (MediaQuery.of(context).size.width - 90) / 2,
                            margin: EdgeInsets.only(left: 30, bottom: 30),
                            padding: EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(5, 5),
                                      color: colors.AppColor.gradientSecond
                                          .withOpacity(0.1)),
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(-5, -5),
                                      color: colors.AppColor.gradientSecond
                                          .withOpacity(0.1))
                                ],
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(info[a]['img']))),
                            child: Center(
                                child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[a]["title"],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: colors.AppColor.homePageDetail),
                              ),
                            )),
                          ),
                          Container(
                            height: 170,
                            width: (MediaQuery.of(context).size.width - 90) / 2,
                            margin: EdgeInsets.only(left: 30, bottom: 30),
                            padding: EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(5, 5),
                                      color: colors.AppColor.gradientSecond
                                          .withOpacity(0.1)),
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(-5, -5),
                                      color: colors.AppColor.gradientSecond
                                          .withOpacity(0.1))
                                ],
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(info[b]['img']))),
                            child: Center(
                                child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[b]["title"],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: colors.AppColor.homePageDetail),
                              ),
                            )),
                          )
                        ],
                      );
                    })),
          )
        ]),
      ),
    );
  }
}
