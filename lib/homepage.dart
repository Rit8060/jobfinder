import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: GNav(
            backgroundColor: Colors.white,
            activeColor: Colors.indigo,
            gap: 10,
            tabBorderRadius: 20,
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(
                icon: Icons.work_outline,
                text: 'Favorite',
              ),
              GButton(
                icon: Icons.search_outlined,
                text: 'Search',
              ),
              GButton(
                icon: Icons.perm_identity_outlined,
                text: 'Account',
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  'Job \nFinder',
                  style: TextStyle(
                      height: 1.2, color: Colors.indigo, fontSize: 20),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 200,
              ),
              Container(
                child: Icon(
                  Icons.bookmark_outline,
                  size: 35,
                  color: Colors.indigo,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Icon(
                  Icons.notifications_outlined,
                  size: 35,
                  color: Colors.indigo,
                ),
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Find your \nDream job \nHere',
                      style: TextStyle(
                          fontSize: 30, height: 1.2, color: Colors.indigo),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(width: 0, color: Colors.transparent),
                    ),
                    width: 5,
                    height: 100,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.orange,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.grey.shade100),
                    child: Icon(Icons.search_outlined),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.indigo),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Recommend',
                            style: TextStyle(
                                height: 1.4,
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'fonts/Poppins-Thin.ttf'),
                          ),
                          Text(
                            '135+',
                            style: TextStyle(
                                letterSpacing: -1.5,
                                height: 1.4,
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'fonts/Poppins-Light.ttf'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Recently Added',
                            style: TextStyle(
                                height: 1.4,
                                color: Colors.indigo,
                                fontSize: 14,
                                fontFamily: 'fonts/Poppins-Thin.ttf'),
                          ),
                          Text(
                            '264+',
                            style: TextStyle(
                                letterSpacing: -1.5,
                                height: 1.4,
                                color: Colors.indigo,
                                fontSize: 22,
                                fontFamily: 'fonts/Poppins-Light.ttf'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nearby',
                            style: TextStyle(
                                height: 1.4,
                                color: Colors.indigo,
                                fontSize: 14,
                                fontFamily: 'fonts/Poppins-Thin.ttf'),
                          ),
                          Text(
                            '85+',
                            style: TextStyle(
                                letterSpacing: -1.5,
                                height: 1.4,
                                color: Colors.indigo,
                                fontSize: 22,
                                fontFamily: 'fonts/Poppins-Light.ttf'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                color: Colors.white,
                height: 370,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      jobCard(
                          color: Colors.blue,
                          need: 'Twitter Needs',
                          position: 'Sr.Product\nDesigner',
                          salary: '\$120k',
                          logo: 'assets/twitter.png'),
                      SizedBox(
                        height: 10,
                      ),
                      jobCard(
                          color: Colors.redAccent,
                          need: 'Airbnb Needs',
                          position: 'Sr.Product\nDesigner',
                          salary: '\$100k',
                          logo: 'assets/airbnb.png'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class jobCard extends StatelessWidget {
  const jobCard(
      {super.key,
      required this.color,
      required this.need,
      required this.position,
      required this.salary,
      required this.logo});

  final Color color;
  final String need;
  final String position;
  final String salary;
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(40)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          need,
                          style: TextStyle(
                              color: Colors.white54,
                              fontFamily: 'fonts/Poppins-Thin.ttf',
                              fontSize: 12),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        position,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'fonts/Poppins-Thin.ttf',
                            fontSize: 35),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        salary,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'fonts/Poppins-Thin.ttf',
                            fontSize: 25),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(right: 20, top: 30),
                  child: Image(
                    width: 120,
                    height: 120,
                    image: AssetImage(logo),
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white12,
              ),
              width: 300,
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    width: 180,
                    height: 65,
                    child: Text(
                      'Apply Now',
                      style: TextStyle(color: color),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 0,
                        height: 10,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.white38,
                        ),
                      ),
                      Container(
                        width: 15,
                        height: 30,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.white38,
                        ),
                      ),
                      Container(
                        width: 0,
                        height: 10,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.white38,
                        ),
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white12,
                    ),
                    width: 65,
                    height: 65,
                    child: Icon(
                      Icons.bookmark_outline,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
