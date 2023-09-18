import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double width = 24;
  List<String> shoeAssets = [
    'assets/air_max_97.png',
    'assets/react_presto.png',
    'assets/blue_air_max.png',
    'assets/white_air_max.png'
  ];

  List<String> shoeNames = ['Air Max 97', 'React Presto', 'NO_NAME', 'NO_NAME'];

  List<String> shoePrices = ["\$20.99", "\$25.99", "\$0.00", "\$0.00"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: SizedBox(
              height: 50,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1.14),
                        borderRadius: BorderRadius.circular(9.15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/menu.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset('assets/nike.png'),
                  Expanded(child: Container()),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1.14),
                      borderRadius: BorderRadius.circular(9.15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/bag.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(239, 239, 239, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 45, 0, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '20% Discount',
                          style: GoogleFonts.workSans(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'on your first purchase',
                          style: GoogleFonts.workSans(
                            fontSize: 15,
                          ),
                        ),
                        Expanded(child: Container()),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              elevation: 0,
                              foregroundColor: Colors.white),
                          onPressed: () {},
                          child: Text(
                            'Shop now',
                            style: GoogleFonts.workSans(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -50,
                right: -3,
                child: Image.asset(
                  'assets/discount.png',
                  width: 320,
                  height: 320,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Center(
            child: SmoothPageIndicator(
              controller: PageController(),
              count: 4,
              effect: const WormEffect(
                dotHeight: 8.01,
                dotWidth: 8.01,
                spacing: 20,
                activeDotColor: Colors.black,
                dotColor: Color.fromRGBO(196, 196, 196, 1),
                type: WormType.thin,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Stack(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 45),
                    Center(
                      child: Text(
                        'All',
                        style: GoogleFonts.workSans(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(width: 55),
                    Center(
                      child: Text(
                        'Running',
                        style: GoogleFonts.workSans(
                          fontSize: 15,
                          color: const Color.fromRGBO(156, 156, 156, 1),
                        ),
                      ),
                    ),
                    SizedBox(width: width),
                    Center(
                      child: Text(
                        'Sneakers',
                        style: GoogleFonts.workSans(
                          fontSize: 15,
                          color: const Color.fromRGBO(156, 156, 156, 1),
                        ),
                      ),
                    ),
                    SizedBox(width: width),
                    Center(
                      child: Text(
                        'Formal',
                        style: GoogleFonts.workSans(
                          fontSize: 15,
                          color: const Color.fromRGBO(156, 156, 156, 1),
                        ),
                      ),
                    ),
                    SizedBox(width: width),
                    Center(
                      child: Text(
                        'Casual',
                        style: GoogleFonts.workSans(
                          fontSize: 15,
                          color: const Color.fromRGBO(156, 156, 156, 1),
                        ),
                      ),
                    ),
                    SizedBox(width: width),
                  ],
                ),
              ),
              Positioned(
                right: 310,
                child: AnimatedAlign(
                  alignment: Alignment.centerLeft,
                  duration: const Duration(milliseconds: 150),
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'All',
                        style: GoogleFonts.workSans(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              height: 1500,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.7,
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(239, 239, 239, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            shoeAssets[index],
                            height: 150,
                          ),
                          Text(
                            shoeNames[index],
                            style: GoogleFonts.workSans(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                shoePrices[index],
                                style: GoogleFonts.workSans(
                                  fontSize: 18,
                                ),
                              ),
                              Expanded(child: Container()),
                              Container(
                                width: 30,
                                height: 30,
                                color: Colors.white,
                                child: const Center(
                                  child: Icon(
                                    CupertinoIcons.arrow_right,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.centerLeft,
        children: [
          BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('assets/home.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/bookmark.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/bell.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/user.png'),
                label: '',
              ),
            ],
          ),
          Positioned(
            top: -9,
            left: 30,
            child: Image.asset('assets/page_indicator.png'),
          ),
          const Positioned(
            top: 2,
            left: 67,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 3,
            ),
          ),
        ],
      ),
    );
  }
}
