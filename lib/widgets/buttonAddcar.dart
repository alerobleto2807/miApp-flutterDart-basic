import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonAddcar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            decoration:  BoxDecoration(
            color: const Color.fromARGB(255, 103, 109, 122),
            borderRadius: BorderRadius.circular(10),
             ),
             child: const Row(children: [
               Text("Agregar al carrito",
               style: TextStyle(
                color: Colors.white,
                fontSize: 23,
         /*        fontWeight: FontWeight.bold */
               ),
               ),
               SizedBox(width: 10),
               Icon(FontAwesomeIcons.cartShopping,
               color: Colors.white,
               size: 30,
               )
             ]),
          )
        ],
      ),
    );
  }
}