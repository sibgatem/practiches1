import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 390,
          height: 844,
          child: Column(children: [
            Container(
              width: 390,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.amber),
              child: Image.asset("assets/frame.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Peter Mach",
                    style: GoogleFonts.plusJakartaSans(
                        color: Colors.grey, fontSize: 12),
                    textAlign: TextAlign.left),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Mind Deep Relax",
                    style: GoogleFonts.plusJakartaSans(
                        color: Colors.black, fontSize: 20),
                    textAlign: TextAlign.left),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                        "Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black, fontSize: 15),
                        textAlign: TextAlign.left),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/thrid');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Image.asset("assets/shape.png"),
                    ),
                    Text('Play Next Session',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.white, fontSize: 17)),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 0, 205, 144),
                    minimumSize: const Size(350, 50)),
              ),
            ),
            newMethod(context, Colors.blue, "Sweet Memories",
                "December 29 Pre-Launch"),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  height: 0.1,
                  color: Colors.black.withOpacity(0.25),
                )),
            newMethod(context, Color.fromARGB(255, 0, 205, 144), "A Day Dream",
                "December 29 Pre-Launch"),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  height: 0.1,
                  color: Colors.black.withOpacity(0.25),
                )),
            newMethod(context, Colors.amber, "Mind Explore",
                "December 29 Pre-Launch"),
          ]),
        ),
      ),
    );
  }

  Padding newMethod(BuildContext context, Color color, String nameSong,
      String descriptionSonf) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: color),
              child: Image.asset("assets/shape.png"),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nameSong,
                    style: GoogleFonts.plusJakartaSans(
                        color: Colors.black, fontSize: 17),
                    textAlign: TextAlign.left),
                Text(descriptionSonf,
                    style: GoogleFonts.plusJakartaSans(
                        color: Colors.grey, fontSize: 12),
                    textAlign: TextAlign.left),
              ],
            ),
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
