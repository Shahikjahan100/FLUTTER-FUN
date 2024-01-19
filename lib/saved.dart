import "dart:ui";
import "package:curved_navigation_bar/curved_navigation_bar.dart";
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * 0.65;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //FOR SIGNS AND IMAGE

            Container(
              // color: Colors.white,
              height: containerHeight,
              child: Stack(
                children: [
                  const Positioned(
                    top: 20,
                    left: 20,
                    child: Text("welcome"),
                  ),
                  Image.asset(
                    'assets/slideshow/2.jpg',
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                  //ADDING SIGNS OF BACK AND SHARE TO THIS
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 18, right: 18),
                    child: Positioned(
                      top: 20,
                      left: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            EvaIcons.arrowBack,
                            color: Colors.amber.shade800,
                          ),
                          Icon(
                            Icons.share,
                            color: Colors.amber.shade800,
                          ),
                        ],
                      ),
                    ),
                  ),

                  //ADDING ADDITIONAL IMAGES AND NAME OF THE PLACE
                  Center(
                    child: Column(
                      children: [
                        // ADDING IMAGES
                        Row(
                          children: [
                            //FIRST IMAGE
                            Container(
                              height: 60,
                              width: 60,
                              margin:
                                  const EdgeInsets.only(top: 400, left: 100),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/slideshow/1.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            //SECOND IMAGE
                            Container(
                              height: 60,
                              width: 60,
                              margin: const EdgeInsets.only(top: 400, left: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/slideshow/2.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            //THIRD IMAGE
                            Container(
                              height: 60,
                              width: 60,
                              margin: const EdgeInsets.only(top: 400, left: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/slideshow/1.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "+10",
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //ADDING CITY OR PLACE NAME

                  Container(
                    margin: const EdgeInsets.only(top: 100, left: 20),
                    child: Text(
                      "The Red Canyon",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 10.0),
                        child: Container(
                          color: Colors.black.withOpacity(0.3),
                          height: containerHeight * 0.125,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Row(
                                  children: [
                                    Icon(
                                      EvaIcons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    Icon(
                                      EvaIcons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    Icon(
                                      EvaIcons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    Icon(
                                      EvaIcons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    Icon(
                                      EvaIcons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:
                                              AssetImage('assets/31.jpeg'),
                                        ),
                                        CircleAvatar(
                                          backgroundImage:
                                              AssetImage('assets/32.jpeg'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 20, top: 10),
                                        child: Column(
                                          children: [
                                            Text(
                                              "+12",
                                              style: GoogleFonts.ubuntu(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              "Friends",
                                              style: GoogleFonts.ubuntu(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "The Rocky Mountains are a majestic mountain range that spans the western part of North America, running from the northernmost part of British Columbia in Canada down to New Mexico in the United States. ",
                style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
            ),
            Container(
              width: 240,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade800,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "BOOK NOW",
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      //ADDING BOTTOM-NAVIGATION-BAR
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(
            EvaIcons.home,
            color: Colors.amber.shade800,
          ),
          Icon(
            EvaIcons.bookmark,
            color: Colors.amber.shade800,
          ),
          Icon(
            EvaIcons.compass,
            color: Colors.amber.shade800,
          ),
          Icon(
            EvaIcons.person,
            color: Colors.amber.shade800,
          ),
        ],
      ),
    );
  }
}
