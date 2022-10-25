import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiches1/main.dart';

class thrid extends StatelessWidget {
  const thrid({super.key});

  static Map<int, String> categories2 = {
    0: "All",
    1: "Bible In a Year",
    2: "Dailies",
    3: "Minutes",
    4: "November"
  };
  Widget categoryWidget(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: index == 0
              ? Color.fromRGBO(3, 158, 162, 1)
              : Color.fromRGBO(230, 254, 255, 1),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Center(
              child: Text(
            categories2[index]!,
            style: TextStyle(
                fontSize: 13,
                color: index != 0
                    ? Color.fromRGBO(3, 158, 162, 1)
                    : Color.fromRGBO(230, 254, 255, 1),
                fontWeight: FontWeight.w500),
          )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text("Meditate",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              height: 73,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories2.length,
                itemBuilder: (context, index) => categoryWidget(index, context),
              ),
            ),
          ),
          Container(
              width: 500,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.25)),
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: Column(
                children: [
                  Container(
                    width: 450,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Color.fromRGBO(242, 201, 76, 1),
                    ),
                    child: Image.asset("assets/sun.png"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("A Song of Moon",
                          style: GoogleFonts.plusJakartaSans(
                              color: Colors.black, fontSize: 20),
                          textAlign: TextAlign.left),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 10),
                          child: Text("Start with the basics",
                              style: GoogleFonts.plusJakartaSans(
                                  color: Colors.black, fontSize: 15),
                              textAlign: TextAlign.left),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.favorite_border, size: 20),
                          Text("9 Sessions",
                              style: GoogleFonts.plusJakartaSans(
                                  color: Colors.grey, fontSize: 12),
                              textAlign: TextAlign.left),
                        ],
                      )),
                      Text("Start>",
                          style: GoogleFonts.plusJakartaSans(
                              color: Colors.grey, fontSize: 12),
                          textAlign: TextAlign.left),
                    ],
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Expanded(
                      child: cardWidget(
                          context,
                          "assets/bird.png",
                          "The Sleep Hour",
                          "Ashna Mukherjee",
                          "3 Sessions",
                          Color.fromARGB(255, 255, 133, 12))),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Expanded(
                    child: cardWidget(
                        context,
                        "assets/moon.png",
                        "Easy on the Mission",
                        "Peter Mach",
                        "5 minutes",
                        Color.fromRGBO(242, 201, 76, 1)),
                  ),
                ),
              ],
            ),
          ),
                 Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Expanded(
                      child: cardWidget(
                          context,
                          "assets/sun.WithCloud.png",
                          "Relax with Me",
                          "Amanda James",
                          "3 Sessions",
                          Color.fromRGBO(47, 128, 237, 1))),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Expanded(
                    child: cardWidget(
                        context,
                        "assets/bird.png",
                        "Sun and Energy",
                        "Micheal Hiu",
                        "5 minutes",
                        Color.fromRGBO(3, 158, 162, 1)),
                  ),
                ),
              ],
            ),
                 ),
        ]),
      ),
    );
  }

  Container cardWidget(BuildContext context, String imagePath, String bigText,
      String smallText, String activityText, Color colorCard) {
    return Container(
        width: 223,
        height: 155,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black.withOpacity(0.3)),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            )),
        child: Column(
          children: [
            Container(
              width: 140,
              height:80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: colorCard,
              ),
              child: Image.asset(imagePath),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(bigText,
                    style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16),
                    textAlign: TextAlign.left),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 7),
                    child: Text(
                      smallText,
                      style: GoogleFonts.plusJakartaSans(
                          color: Colors.grey, fontSize: 13),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.favorite_border, size: 16),
                    Text(activityText,
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.grey, fontSize: 12),
                        textAlign: TextAlign.left),
                  ],
                )),
                Text("Start>",
                    style: GoogleFonts.plusJakartaSans(
                        color: Colors.grey, fontSize: 12),
                    textAlign: TextAlign.left),
              ],
            )
          ],
        ));
  }
}
