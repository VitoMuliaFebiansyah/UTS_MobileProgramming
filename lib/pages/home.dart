import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:uts_mobileprogramming/pages/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(left: 10, top: 10),
        child: Text(
          "Category",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: const Color(0xff000000),
          ),
        ),
      );
    }

    Widget Category1() {
      Widget Category2(String img, String text) {
        return Container(
          margin: const EdgeInsets.fromLTRB(20, 20, 10, 20),
          padding: const EdgeInsets.all(10),
          height: 100,
          width: 120,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, spreadRadius: 0.1, blurRadius: 15)
          ], color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(img), fit: BoxFit.cover))),
              const Spacer(),
              Row(
                children: [
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.normal),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward,
                    size: 15,
                  )
                ],
              )
            ],
          ),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Category2("assets/plant_white_bg.png", "Plant"),
            Category2("assets/lamp_white_bg.png", "Lamp"),
            Category2("assets/chair_white_bg.png", "Chair"),
            Category2("assets/plant_white_bg.png", "Plant"),
            Category2("assets/lamp_white_bg.png", "Lamp"),
            Category2("assets/chair_white_bg.png", "Chair"),
          ],
        ),
      );
    }

    Widget hotItem1() {
      return Container(
        margin: const EdgeInsets.only(left: 10),
        child: Text(
          "Hot Item",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: const Color(0xff000000),
          ),
        ),
      );
    }

    Widget hotItem2() {
      Widget Card(String img, String text) {
        return Container(
          margin: const EdgeInsets.only(left: 10, top: 10),
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(img))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 150),
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.5),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 150, left: 10),
                child: Text(text,
                    style: GoogleFonts.poppins(
                      color: const Color(0xffFFFFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    )),
              )
            ],
          ),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Card("assets/favorite_img_4.jpg", "Cactus\n\$18"),
                Card("assets/favorite_img_2.jpg", "Traditional Chair\n\$24")
              ],
            ),
            Row(
              children: [
                Card("assets/favorite_img_3.jpeg", "Wooden Chair\n\$44"),
                Card("assets/favorite_img_1.jpg", "Elegant Lamp\n\$13"),
              ],
            ),
            Row(
              children: [
                Card("assets/favorite_img_5.jpg", "Beach Beautiful\n\$30"),
                Card("assets/favorite_img_6.jpg", "Architectural\n\$36"),
              ],
            ),
            Row(
              children: [
                Card("assets/favorite_img_5.jpg", "Beach Beautiful\n\$30"),
                Card("assets/favorite_img_6.jpg", "Architectural\n\$36"),
              ],
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff8495EB),
          title: Text("Discover",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffFFFFFF))),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            )
          ],
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                    suffixIcon: const Icon(Icons.close),
                    hintText: "What are you looking for?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [header(), Category1(), hotItem1(), hotItem2()],
          )),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xff8495EB),
          animationDuration: Duration(milliseconds: 300),
          items:[
            Icon(Icons.home, color: Colors.grey),
            Icon(Icons.favorite, color: Colors.grey),
            Icon(Icons.person, color: Colors.grey,)
          ],
          onTap: (index) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const profilePage())
                    );
              },
          ),
      ),
    );
  }

}
