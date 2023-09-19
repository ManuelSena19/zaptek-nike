import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaptek_nike/home_screen.dart';

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({super.key});

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  double height = 15;
  double pillPosition = 0;
  double startPosition = 0;
  double endPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomeScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                          width: 1.14,
                        ),
                        borderRadius: BorderRadius.circular(9.15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('assets/nav_left.png'),
                      ),
                    ),
                  ),
                  Text(
                    'Air Max 200 SE',
                    style: GoogleFonts.workSans(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 1.14,
                          ),
                          borderRadius: BorderRadius.circular(9.15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset('assets/bag.png'),
                        ),
                      ),
                      Positioned(
                        top: -5,
                        left: -5,
                        child: Image.asset('assets/bubble.png'),
                      ),
                      Positioned(
                        left: 1,
                        child: Image.asset('assets/2.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  height: 520,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 90),
                          Text(
                            'Size',
                            style: GoogleFonts.workSans(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: height),
                          Container(
                            height: 41.18,
                            width: 61.76,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black12,
                                width: 0.94,
                              ),
                              borderRadius: BorderRadius.circular(13.73),
                            ),
                            child: Center(
                              child: Text(
                                'UK 6',
                                style: GoogleFonts.workSans(fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(height: height),
                          Container(
                            height: 41.18,
                            width: 61.76,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.94,
                              ),
                              borderRadius: BorderRadius.circular(13.73),
                            ),
                            child: Center(
                              child: Text(
                                'UK 7',
                                style: GoogleFonts.workSans(fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(height: height),
                          Container(
                            height: 41.18,
                            width: 61.76,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black12,
                                width: 0.94,
                              ),
                              borderRadius: BorderRadius.circular(13.73),
                            ),
                            child: Center(
                              child: Text(
                                'UK 8',
                                style: GoogleFonts.workSans(fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(height: height),
                          Container(
                            height: 41.18,
                            width: 61.76,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black12,
                                width: 0.94,
                              ),
                              borderRadius: BorderRadius.circular(13.73),
                            ),
                            child: Center(
                              child: Text(
                                'UK 9',
                                style: GoogleFonts.workSans(fontSize: 16),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '\$30.99',
                                style: GoogleFonts.workSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27,
                                ),
                              ),
                              Text(
                                '10% OFF',
                                style: GoogleFonts.workSans(
                                  fontSize: 13.57,
                                  color: const Color.fromRGBO(190, 48, 50, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/background.png',
                        width: 170,
                        height: 450,
                      ),
                      Expanded(child: Container()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(height: 100),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.14,
                              ),
                              borderRadius: BorderRadius.circular(13.73),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset('assets/bookmark_small.png'),
                            ),
                          ),
                          const SizedBox(height: 100),
                          Text(
                            'Colour',
                            style: GoogleFonts.workSans(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 25),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.14,
                              ),
                              borderRadius: BorderRadius.circular(13.73),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Container(
                                  width: 18.3,
                                  height: 18.3,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(205, 38, 38, 1),
                                      borderRadius:
                                          BorderRadius.circular(4.58)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.14,
                              ),
                              borderRadius: BorderRadius.circular(13.73),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Container(
                                  width: 18.3,
                                  height: 18.3,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(57, 67, 118, 1),
                                    borderRadius: BorderRadius.circular(4.58),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: -20,
                  bottom: 20,
                  child: Image.asset(
                    'assets/air_max_200.png',
                    height: 450,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Swipe down to add',
                textAlign: TextAlign.center,
                style: GoogleFonts.workSans(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: SizedBox(
                    height: 240,
                    child: Image.asset('assets/box.png'),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    child: Container(
                      height: 120,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(22.88),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/bag_white.png'),
                            const SizedBox(
                              height: 7,
                            ),
                            const Icon(
                              CupertinoIcons.chevron_down,
                              color: Colors.white24,
                            ),
                            const SizedBox(
                              height: 0,
                            ),
                            const Icon(
                              CupertinoIcons.chevron_down,
                              color: Colors.grey,
                            ),
                            const Icon(
                              CupertinoIcons.chevron_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
