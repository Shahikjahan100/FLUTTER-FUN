import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> assetImagePaths = [
    'assets/slideshow/1.jpg',
    'assets/slideshow/2.jpg',
    'assets/slideshow/3.jpg',
  ];
  final List<String> imageTexts = [
    'Uluru',
    'First Cliffwalk and Adventures',
    'Swiss Alps',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //ADDING BACK ARROW AND SHARE ARROW
                  Container(
                    margin:
                        const EdgeInsets.only(top: 100, left: 20, right: 20),
                    child: Icon(
                      EvaIcons.arrowBack,
                      color: Colors.amber.shade800,
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 100, left: 20, right: 20),
                    child: Icon(
                      EvaIcons.share,
                      color: Colors.amber.shade800,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              // ADDING TEXT LIKE LET'S HIKE AND SHAHYK
              Text(
                "LET'S HIKE!",
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber.shade800,
                    fontSize: 20,
                    letterSpacing: 4.0),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "SHAHYK",
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber.shade800,
                ),
                margin: const EdgeInsets.all(9),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Find Your Adventure.....",
                      hintStyle: GoogleFonts.ubuntu(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 140,
              ),
              //ADDING CAROUSEL-BUILDER
              CarouselSlider.builder(
                  itemCount: assetImagePaths.length,
                  options: CarouselOptions(
                    height: 200,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                  ),
                  itemBuilder: (BuildContext context, index, realIndex) {
                    return Container(
                      width: 300,
                      // color: Colors.amber.shade800,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            assetImagePaths[index],
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 20,
                            child: Transform.scale(
                              scale: 0.8,
                              child: Text(
                                imageTexts[index],
                                style: GoogleFonts.ubuntu(
                                  color: Colors.amber.shade800,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 150,
                            left: 100,
                            child: Transform.scale(
                              scale: 0.8,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber.shade800,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  "Read more",
                                  style: GoogleFonts.ubuntu(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
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
