import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  final int boys;
  final int girls;
  const CheckoutScreen({super.key, required this.boys, required this.girls});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1235B0),
        title: const Text(
          'Checkout',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          SizedBox(
              width: Get.width - 30,
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Note:-  ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                  Expanded(
                    child: Text(
                      'Fill Player details by clicking on dummy player hyperlink',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  )
                ],
              )),
          const Row(
            children: [
              Text(
                'Payment Method Available: ',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                'Online / Cash',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
          Container(
            width: Get.width,
            height: 103+(boys*43),
            padding: const EdgeInsets.all(10),
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
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Boys Singles U-11',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'Tickets: ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      boys.toString(),
                    ),
                    const Spacer(),
                    const Text(
                      'Amount: ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const Text('₹ 900 x 0 = ₹ 0')
                  ],
                ),
                const SizedBox(height: 10,),
                Expanded(
                    child: ListView.builder(
                        itemCount: boys,
                        shrinkWrap: true,
                        itemBuilder: (ctx, i) {
                          return Card(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  '${i + 1}',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  height: 10,
                                  width: 1,
                                  color: Colors.grey,
                                  margin: const EdgeInsets.only(left: 5, right: 5),
                                  ),
                                  
                                Text('Players ${i + 1}', style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),)
                              ],
                            ),
                          ));
                        }))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width,
            height: 103+(girls*43),
            padding: const EdgeInsets.all(10),
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
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Girls Singles U-11',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'Tickets: ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      girls.toString(),
                    ),
                    const Spacer(),
                    const Text(
                      'Amount: ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const Text('₹ 900 x 0 = ₹ 0')
                  ],
                ),
                const SizedBox(height: 10,),
                Expanded(
                    child: ListView.builder(
                        itemCount: girls,
                        shrinkWrap: true,
                        itemBuilder: (ctx, i) {
                          return Card(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  '${i + 1}',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  height: 10,
                                  width: 1,
                                  color: Colors.grey,
                                  margin: const EdgeInsets.only(left: 5, right: 5),
                                  ),
                                  
                                Text('Players ${i + 1}', style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),)
                              ],
                            ),
                          ));
                        }))
              ],
            ),
          ),
          const Spacer(),
          Row(children: [const Spacer(), FloatingActionButton(onPressed: (){}, backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)), child: const Icon(Icons.add, color: Colors.white,) ,),],),
          const Divider(),
          const Row(children: [Spacer(), Text('Total Amount: ₹ 0')],),
          const SizedBox(height: 10,),
ElevatedButton(
              onPressed: () {
                // Get.to(CheckoutScreen(boys: boys.value, girls: girls.value,));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fixedSize: Size(Get.width - 20, 60),
                  backgroundColor: const Color(0xff1235B0)),
              child: const Text(
                'Proceed to payment',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            


        ]),
      ),

    
    );
  }
}
