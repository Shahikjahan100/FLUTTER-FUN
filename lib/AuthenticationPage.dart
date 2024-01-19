import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
              child: Column(
                children: [
                  // FOR WELCOME
                  Container(
                    margin:
                        const EdgeInsets.only(left: 15, top: 430, right: 150),
                    child: Text(
                      "Welcome!",
                      style: GoogleFonts.ubuntu(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3.0,
                        color: Colors.white, // Adjust text color
                      ),
                    ),
                  ),
                  // CONTAINER FOR INPUT TEXTFIELD-1(USERNAME)
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 40, right: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(width: 5.0),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.amber.shade800,
                        ),
                        hintText: "Username",
                        hintStyle: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 3.0,
                          color: Colors.white, // Adjust text color
                        ),
                      ),
                    ),
                  ),
                  //CONTAINER FOR INPUT TEXTFIELD-2(PASSWORD)

                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 40, right: 40),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.amber.shade800,
                        ),
                        hintText: "Password",
                        hintStyle: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 3.0,
                          color: Colors.white, // Adjust text color
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //ADDING CHECKBOX AND FORGOT PASSWORD
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Theme(
                            data:
                                ThemeData(unselectedWidgetColor: Colors.white),
                            child: Checkbox(
                              activeColor: Colors.amber.shade800,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ),
                          Text(
                            "Remember Me",
                            style: GoogleFonts.ubuntu(color: Colors.white),
                          )
                        ],
                      ),
                      Text(
                        "Forgot Password?",
                        style: GoogleFonts.ubuntu(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // ADDING LOGIN BUTTON
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.amber.shade800),
                        minimumSize: MaterialStateProperty.all(Size(300, 40))),
                    onPressed: () {},
                    child: Text(
                      "LOGIN",
                      style: GoogleFonts.ubuntu(
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // ADDING OPTION TO SIGNUP
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Sign Up",
                        style: GoogleFonts.ubuntu(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 68,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
