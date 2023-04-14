import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  Widget Menu3(String img, String furniture1, int warna, String img2, String furniture2,
      int warna2) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(40, 40, 40, 0),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: 140,
                height: 175,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 0.1,
                          blurRadius: 15)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Color(warna)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(img))),
                    ),
                    Spacer(),
                    Text(
                      furniture1,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(20),
                width: 140,
                height: 175,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 0.1,
                          blurRadius: 15)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Color(warna2)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(img2))),
                    ),
                    Spacer(),
                    Text(
                      furniture2,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage("assets/pp.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Vito Mulia Febiansyah",
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.normal),
            ),
            Text(
              "Flutter Developer",
              style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 80),
          width: double.infinity,
          height: 40,
          color: Color.fromARGB(255, 247, 247, 247),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "24 Collection",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.normal),
              ),
              Spacer(),
              Text(
                "12 Favorite",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Menu3("assets/chair_white_bg.png", "Best Chairs", 0xFFFFC6C6,
                "assets/lamp_light_gray_bg.png", "Best Lamps", 0xFFFFFFFF),
            Menu3("assets/chair_white_bg.png", "Best Chairs", 0xFFFFFFFF,
                "assets/lamp_light_gray_bg.png", "Best Lamps", 0xFFA4BDFF),
          ],
        )
      ],
)),
bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xff8495EB),
          animationDuration: Duration(milliseconds: 300),
          items:[
            Icon(Icons.home, color: Colors.grey),
            Icon(Icons.favorite, color: Colors.grey),
            Icon(Icons.person, color: Colors.grey,)
          ],
         
          ),
);

}
}