import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system, //take the system theam data
      darkTheme: ThemeData(
          //Theme data is the class in which we have to pass the data about the theme
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.lato()
              .fontFamily // when the theam mode is dark this will work (theme)
          ),
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          // when the theme mode is light then this will work (theme)
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/login",
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
