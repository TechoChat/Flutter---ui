import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/button.dart';
import 'package:sushi/theme/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [ Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //shop name
                  Text(
                    "SUSHI MAN",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),

                  //icon
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Image.asset('lib/images/sushi.png'),
                  ),
                  //title
                  Text(
                    "The Taste of Japanese Food",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 44,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  //subtitle
                  Text(
                    "Feel the taste of the most popular Japanese food from anywhere anytime",
                    style: TextStyle(
                      color: Colors.grey[300],
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  //get Started Bottom
                  MyButton(
                    text: "Get Started",
                    onTap: () {
                      //go to menu page
                      Navigator.pushNamed(context, '/menupage');
                    },
                  ),
                ]),]
          ),
        ),
      ),
    );
  }
}
