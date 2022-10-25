import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiches1/second.dart';
import 'package:practiches1/thrid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        '/second': (BuildContext context) => const second(),
        '/thrid': (BuildContext context) => const thrid(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              color: Color.fromARGB(255, 3, 157, 162),
              width: 390,
              height: 844,
              child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Image.asset("assets/medinow.png"),
                    Text("Meditate With Us!",
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.white, fontSize: 17)),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/second');
                        },
                        child: Text('Sign in with Apple',
                            style: GoogleFonts.plusJakartaSans(
                                color: Colors.black, fontSize: 16)),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            minimumSize: const Size(350, 50)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/third');
                          },
                          child: Text('Continue with Email or Phone',
                              style: GoogleFonts.plusJakartaSans(
                                  color: Colors.black, fontSize: 16)),
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              foregroundColor: Colors.black,
                              backgroundColor:
                                  Color.fromARGB(203, 63, 255, 236),
                              minimumSize: const Size(350, 50))),
                    ),
                    Text("Continue With Google",
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.white, fontSize: 16)),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Image.asset("assets/men.png"),
                    ),
                  ],
                ),
              ))),
    );
  }
}
