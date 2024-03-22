import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/Screens/PlayersScreen/players_screen.dart';
import 'package:test/Screens/Tournament/tournament.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _onItemTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1235B0),
        title: const Text(
          'Rackonnect',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chat,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              width: Get.width - 30,
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: Get.width - 30,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          'https://assets.iplt20.com/bcci/articles/1710935594_IMG_2486.PNG',
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: Get.width - 30,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          'https://images.pexels.com/photos/3660204/pexels-photo-3660204.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: Get.width - 30,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://images.pexels.com/photos/2202685/pexels-photo-2202685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(const PlayersScreen());
                    },
                    child: _buttonFun('FIND', 'Players',
                        'https://images.pexels.com/photos/4966373/pexels-photo-4966373.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  ),
                  _buttonFun('BOOK', 'Courts',
                      'https://images.pexels.com/photos/8007176/pexels-photo-8007176.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  _buttonFun('PLAY', 'Tournaments',
                      'https://images.pexels.com/photos/8007408/pexels-photo-8007408.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [_card(), _card(), _card()]),
            ),
            _bottomButtons()
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: const Color(0xff1235B0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => _onItemTapped(0),
              color: Colors.white,
            ),
            IconButton(
              icon: const Icon(Icons.signal_cellular_4_bar_sharp),
              onPressed: () => _onItemTapped(1),
              color: Colors.white,
            ),
            const SizedBox(width: 48.0), // This width should match notch margin
            IconButton(
              icon: const Icon(Icons.link),
              onPressed: () => _onItemTapped(2),
              color: Colors.white,
            ),
            IconButton(
              icon: const Icon(Icons.emoji_events),
              onPressed: () => _onItemTapped(3),
              color: Colors.white,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff1235B0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _card() {
    return InkWell(
      onTap: (){
        Get.to( Tournaments());
      },
      child: Container(
        width: 200,
        height: 200,
        margin: const EdgeInsets.only(right: 5, left: 15, top: 15, bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 5),
                  blurRadius: 5,
                  spreadRadius: 5)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                child: Image.network(
                  'https://images.pexels.com/photos/6292463/pexels-photo-6292463.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 84,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Khelo badminton today for very affordable price',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '₹ 900 onwards',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.orange,
                        ),
                        SizedBox(
                            width: 160,
                            child: Text(
                              'Rackonnect badminton academy',
                              overflow: TextOverflow.ellipsis,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buttonFun(String title, String subTitle, String img) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 150,
      height: 60,
      child: Stack(children: [
        Positioned(
            left: 25,
            child: Container(
              width: 125,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xff1235B0),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ]),
            )),
        Positioned(
            left: 0,
            child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 3.5, color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    img,
                    fit: BoxFit.cover,
                  ),
                )))
      ]),
    );
  }

  Widget _bottomButtons() {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            // Button pressed action
          },
          style: ButtonStyle(
              fixedSize:
                  MaterialStateProperty.all<Size>(Size(Get.width / 2 - 30, 60)),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
          child: const Row(
            children: [
              Icon(
                Icons.sports_handball_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Matches',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () {
            // Button pressed action
          },
          style: ButtonStyle(
              fixedSize:
                  MaterialStateProperty.all<Size>(Size(Get.width / 2 - 30, 60)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xff1235B0)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
          child: const Row(
            children: [
              Icon(
                Icons.group,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Groups',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
