import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Tournaments extends StatelessWidget {
  Tournaments({super.key});

  var boys = 1.obs;
  var girls = 1.obs;
  var isBoysSelected = false.obs;
  var isGirlsSelected = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                padding: const EdgeInsets.all(10),
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
                      'Tounaments Details',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.help_rounded,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
              )),
            ),
            SizedBox(
                width: Get.width,
                height: 200,
                child: Image.network(
                  'https://images.pexels.com/photos/1432039/pexels-photo-1432039.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: Get.width - 20,
              height: 250,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Khelo badminton today champion ship'),
                    Container(
                        margin: const EdgeInsets.all(10),
                        // padding: EdgeInsets.all(10),
                        width: Get.width,
                        height: 192,
                        child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.sports_tennis,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text('Badminton'),
                                    Spacer(),
                                    Icon(
                                      Icons.calendar_month,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('27th Apr - 28th Apr, 2024')
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Rackonnect Badminton',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.settings,
                                      color: Colors.orange,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    const Text(
                                      'Organiser Details',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    const Spacer(),
                                    Container(
                                      width: 70,
                                      height: 30,
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                          child: Text(
                                        'DRAW',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      )),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 70,
                                      height: 30,
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                          child: Text(
                                        'MATCHES',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      )),
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text('Rackonnect'),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      '8376883367',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: Get.width,
                child: const Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Events',
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Icon(Icons.search, color: Color(0xff1235B0)),
                    SizedBox(
                      width: 20,
                    )
                  ],
                )),
            Container(
              color: Colors.white,
              // height: 200,
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    width: Get.width - 20,
                    child: Card(
                        child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Card(
                        color: Color(0xfff7e7da),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(children: [
                            Text(
                              'Boys Singles U-11',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Code: ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 3.5,
                                ),
                                Text(
                                  'GS U-11',
                                ),
                                Spacer(),
                                Text(
                                  'Fees:',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 3.5,
                                ),
                                Text(
                                  '₹ 900',
                                ),
                                Spacer(),
                                Text(
                                  'Age Limit:',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 3.5,
                                ),
                                Text(
                                  '10 Y',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Obx(() => isBoysSelected.value
                                    ? Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              boys.value--;
                                            },
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              color: Colors.blue,
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            boys.value.toString(),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              boys.value++;
                                            },
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              color: Colors.blue,
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : InkWell(
                                        onTap: () {
                                          isBoysSelected.value = true;
                                        },
                                        child: Container(
                                          width: 70,
                                          height: 30,
                                          padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                              color: const Color(0xff1235B0),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Center(
                                              child: Text(
                                            'Join',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          )),
                                        ),
                                      ))
                              ],
                            )
                          ]),
                        ),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 180,
                    width: Get.width - 20,
                    child: Card(
                        child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Card(
                        color: Color(0xfff7e7da),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(children: [
                            Text(
                              'Girls Singles U-11',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Code: ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 3.5,
                                ),
                                Text(
                                  'GS U-11',
                                ),
                                Spacer(),
                                Text(
                                  'Fees:',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 3.5,
                                ),
                                Text(
                                  '₹ 900',
                                ),
                                Spacer(),
                                Text(
                                  'Age Limit:',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 3.5,
                                ),
                                Text(
                                  '10 Y',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Obx(() => isGirlsSelected.value
                                    ? Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              girls.value--;
                                            },
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              color: Colors.blue,
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            girls.value.toString(),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              girls.value++;
                                            },
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              color: Colors.blue,
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : InkWell(
                                        onTap: () {
                                          isGirlsSelected.value = true;
                                        },
                                        child: Container(
                                          width: 70,
                                          height: 30,
                                          padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                              color: const Color(0xff1235B0),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Center(
                                              child: Text(
                                            'Join',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          )),
                                        ),
                                      ))
                              ],
                            )
                          ]),
                        ),
                      ),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {},
              
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                fixedSize: Size(Get.width - 20, 60), backgroundColor: const Color(0xff1235B0)),
              child: Text(
                'Checkout',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            )
            ,
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
