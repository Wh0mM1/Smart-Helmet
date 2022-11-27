import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smart_helmet/widgets/drawer.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:smart_helmet/widgets/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   flexibleSpace: Container(
      //     decoration: const BoxDecoration(
      //         gradient: LinearGradient(colors: [
      //       Color.fromARGB(255, 237, 133, 126),
      //       Color.fromARGB(255, 68, 157, 230),
      //       Color.fromARGB(255, 235, 93, 83),
      //     ])),
      //   ),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 237, 133, 126),
              Colors.blue,
              Colors.red,
            ],
          ),
        ),
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.account_circle_sharp, size: 30.0),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
                Card(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.transparent,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 194, 222, 245),
                        width: 1,
                      )),
                  elevation: 8,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 153, 196, 231),
                          Color.fromARGB(255, 5, 70, 123),
                          Colors.red,
                        ])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Daily Activity!"),
                            Row(
                              children: [
                                Text("Km | "),
                                Text("Time"),
                              ],
                            )
                          ],
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/image/daily.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.transparent,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 194, 222, 245),
                        width: 1,
                      )),
                  elevation: 8,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 153, 196, 231),
                          Color.fromARGB(255, 5, 70, 123),
                          Colors.red,
                        ])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text("Km"),
                                Text("/15Km"),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: LinearPercentIndicator(
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  animation: true,
                                  lineHeight: 20.0,
                                  animationDuration: 800,
                                  percent: 0.8,
                                  center: Text("80.0%"),
                                  linearStrokeCap: LinearStrokeCap.roundAll,
                                  progressColor: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 153, 196, 231),
                            Color.fromARGB(255, 5, 70, 123),
                            Colors.red,
                          ])),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 2 / 3,
                        child: Column(
                          children: [
                            Text("Current Location"),
                            SizedBox(height: 10.0),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1),
                              ),
                              child: Image.asset('assets/image/map.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      // width: MediaQuery.of(context).size.width * 1 / 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 153, 196, 231),
                            Color.fromARGB(255, 5, 70, 123),
                            Colors.red,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircularPercentIndicator(
                            radius: 30.0,
                            lineWidth: 4.0,
                            percent: 0.90,
                            center: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("90"),
                                Text("F"),
                              ],
                            ),
                            progressColor: Colors.green,
                          ),
                          SizedBox(height: 10.0),
                          CircularPercentIndicator(
                            radius: 30.0,
                            lineWidth: 4.0,
                            percent: 0.90,
                            center: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("90"),
                                Text("/100"),
                              ],
                            ),
                            progressColor: Colors.green,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Card(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.transparent,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 194, 222, 245),
                        width: 1,
                      )),
                  elevation: 8,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(121, 84, 21, 142),
                          Color.fromARGB(219, 122, 129, 144),
                          Color.fromARGB(255, 93, 8, 1),
                        ])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/image/profile.png'),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Verify Yourself"),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Adhar Card | "),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Lisence"),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(121, 84, 21, 142),
                    Color.fromARGB(219, 122, 129, 144),
                    Color.fromARGB(255, 93, 8, 1),
                  ],
                )),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 10,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_active_outlined,
                              size: 50.0,
                            ),
                          ),
                        ),
                        Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.directions_bike,
                              size: 50.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Align(
            //   alignment: AlignmentDirectional.bottomStart,
            //   child: TextButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => ProfilePage()),
            //       );
            //     },
            //     child: Container(
            //       margin: EdgeInsets.all(30.0),
            //       width: 60,
            //       height: 60,
            //       decoration: const BoxDecoration(
            //         shape: BoxShape.circle,
            //         image: DecorationImage(
            //             image: AssetImage('assets/image/profile.png'),
            //             fit: BoxFit.fill),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
