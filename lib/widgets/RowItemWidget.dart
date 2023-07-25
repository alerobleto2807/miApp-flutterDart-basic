import 'package:flutter/material.dart';

class RowItemWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(
          children: [
            for (int i = 1; i < 4; i++)
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              /* height: 100, */
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 1
                  ),
                ],
                 ),
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          /* margin: const EdgeInsets.only(top: 20, right: 70), */
                          height: 130,
                          width: 140,
                          decoration: BoxDecoration(
                            color: const Color(0xFF475269),
                            borderRadius: BorderRadius.circular(10),
                            ),
                        ),
                        Image.asset( 'Assets/Images/$i.jpg',
                        height: 110,
                        width: 130,
                        fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 30),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ropita 0-3 meses',
                        style: TextStyle(
                          color: Color.fromARGB(255, 68, 66, 66),
                          fontSize: 20,
                           fontWeight: FontWeight.normal 
                        ),
                        ),
                        SizedBox(height: 5),
                        Text('100% algodon',
                        style: TextStyle(
                         color:  Color(0xFF475269),
                          fontSize: 12,
                         ),
                        ), 
                         Row(
                          children: [
                            Text("₡ 12500",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 13,
                              fontWeight: FontWeight.bold
                             ),
                            ),
                            Text('   carrito'),
                               IconButton(
                                onPressed: null,
                                icon: Icon(Icons.shopping_cart, color: Colors.black, )
                                ),
                           ],
                         )
                      ],
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
    );
  }
}