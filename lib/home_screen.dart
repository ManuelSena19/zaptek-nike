import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double width = 27;

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
                children: [
                  const Icon(Icons.menu),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset('assets/nike.png'),
                  Expanded(child: Container()),
                  const Icon(CupertinoIcons.bag)
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SmoothPageIndicator(
                controller: PageController(),
                count: 4,
                effect: const WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 20,
                  activeDotColor: Colors.black,
                  dotColor: Colors.black12,
                  type: WormType.thin,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Stack(
              children: [
                SizedBox(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const Text(
                        'All',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(width: 40),
                      const Text(
                        'Running',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: width),
                      const Text(
                        'Sneakers',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: width),
                      const Text(
                        'Formal',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: width),
                      const Text(
                        'Casual',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: width),
                    ],
                  ),
                ),
                Positioned(
                  child: AnimatedAlign(
                    alignment: Alignment.centerLeft,
                    duration: const Duration(milliseconds: 150),
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 1500,
              child: GridView.builder(
                itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    );
                  },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.centerLeft,
        children: [
          BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            selectedItemColor: Colors.black,
            iconSize: 30,
            unselectedItemColor: Colors.black12,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bookmark),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bell),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                label: '',
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 30,
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle, color: Colors.black),
              width: MediaQuery.of(context).size.width / 5,
              height: 3,
            ),
          )
        ],
      ),
    );
  }
}
