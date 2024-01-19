import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //FOR AVATAR AND NAME
            Container(
              margin: const EdgeInsets.only(top: 100, left: 10, right: 10),
              padding: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 4,
                  color: Colors.amber.shade800,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //FOR ADDING AVATAR
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: const CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/911.jpg'),
                    ),
                  ),
                  //FOR ADDING NAME
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        Text(
                          "ANDREW TATE",
                          style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "FORMER KICKBOXING CHAMPION",
                          style: GoogleFonts.ubuntu(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 425,
              margin: EdgeInsets.only(left: 10, right: 10, top: 25),
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.amber.shade800),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView(
                children: [
                  //FOR ADDING FAVOURITE
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: Colors.amber.shade800),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        EvaIcons.heart,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Your Favourite",
                        style: GoogleFonts.ubuntu(color: Colors.white),
                      ),
                    ),
                  ),
                  //FOR ADDING NOTIFICATIONS
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: Colors.amber.shade800),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        EvaIcons.bell,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Notifications",
                        style: GoogleFonts.ubuntu(color: Colors.white),
                      ),
                    ),
                  ),
                  //FOR ADDING INVITE PEOPLE
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: Colors.amber.shade800),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        EvaIcons.personAdd,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Invite Friends",
                        style: GoogleFonts.ubuntu(color: Colors.white),
                      ),
                    ),
                  ),
                  //FOR CHANGING THEME

                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: Colors.amber.shade800),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        EvaIcons.sun,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Light Theme",
                        style: GoogleFonts.ubuntu(color: Colors.white),
                      ),
                    ),
                  ),
                  //FOR ADDING LOGOUT
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: Colors.amber.shade800),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        EvaIcons.logOut,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Log Out",
                        style: GoogleFonts.ubuntu(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
