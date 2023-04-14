import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_mobileprogramming/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        appBar: AppBar(
          title: Text("<",
           style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xffFFFFFF))),
        backgroundColor: const Color(0xff8495EB),
        elevation: 0,
        actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                 },
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xff8495EB),
            ),
            Center(
              child: Column(
                children: [
                   Container(
             margin: const EdgeInsets.only(top: 20),
                child: Image.asset(
                        "assets/ikea.png",
                        height: 100,
                      ),
              ),
const SizedBox(height: 20,),
              Text("Hello, Welcome to IKEA!",
              style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffFFFFFF)),),
                const SizedBox(height: 10,),
                Text(
                      "Your Future",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xffFFFFFF)),
                    ),
                  const SizedBox(height: 10,),
                 Text(
                      "F u r n i t u r e",
                      style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffFFFFFF)),
                    ),
                  const SizedBox(height: 10,),
                  
                  const Divider(
                height: 10,
                thickness: 5,
                color: Color(0xffFFCBC4),
                indent: 130,
                endIndent: 130,
              ),
                ],
              ),
            ),
          
            Stack(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 150),
                    height: 280,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Login First",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff000000)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Container(
                    padding: const EdgeInsets.only(top: 120),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: " ",
                              labelText: "Username",
                              labelStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange),
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: " ",
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              suffixIcon: Icon(Icons.visibility),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 550),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a member?",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          )),
                      Text(
                        " Register now",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff5782E5)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage())
                    );
              },
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 500),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
                  decoration: BoxDecoration(
                      color: const Color(0xff5782E5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("Login",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffFFFFFF),
                        fontSize: 18,
                      )),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 655),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Or continue with",
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ))
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 700),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      "assets/google.png",
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      "assets/fb.png",
                      height: 30,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
