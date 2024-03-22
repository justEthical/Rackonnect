import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayersScreen extends StatelessWidget {
  const PlayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 80,
          width: Get.width,
          decoration: const BoxDecoration(
              color: Color(0xff1235B0),
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(50))),
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                const Text(
                  'Rackonnect',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ],
            ),
          )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          width: Get.width - 20,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    spreadRadius: 5)
              ]),
          child: const Row(
            children: [
              Text('207 players found'),
              Spacer(),
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.filter_alt_outlined)
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (ctx, i) {
                  return PlayerCard(index: i);
                }))
      ],
    ));
  }
}

class PlayerCard extends StatelessWidget {
  final int index;
  const PlayerCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Spacer(),
                  Text(
                    'Aadi $index', // Placeholder for player name
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Container(
                    width: 70,
                    height: 30,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Color(0xff1235B0),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Connect',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          'https://placebeard.it/640x360',
                          fit: BoxFit.cover,
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                   Column(
                    children: [
                      SizedBox(
                        width: Get.width - 170,
                        child: Row(
                          children: [
                            Icon(
                              Icons.account_circle,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Age: 18'),
                            SizedBox(width: 20,),
                            Icon(
                              Icons.location_on,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(child: Text('R 46, Budhh vihar', overflow: TextOverflow.ellipsis,))
                          ],
                        ),
                      ), 

                      SizedBox(
                        width: Get.width - 170,
                        child: Row(
                          children: [
                            Icon(
                              Icons.show_chart,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Amature'),
                            SizedBox(width: 12,),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('100', overflow: TextOverflow.ellipsis,)
                          ],
                        ),
                      ),

                      SizedBox(
                        width: Get.width - 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Male'),
                            SizedBox(width: 10,),
                            Icon(Icons.sports_tennis_outlined, size: 18,), Icon(Icons.sports_tennis_outlined, size: 18,)
                            
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
