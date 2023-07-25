
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart' as badges;
import '../widgets/RowItemWidget.dart';
import '../widgets/ArticolsGalery.dart';



class MyGridScreen extends StatefulWidget {
  const MyGridScreen({super.key});

  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galeria de Productos"),
        backgroundColor: const Color.fromARGB(255, 44, 140, 153),
      ),
      // aqui ininicamos el contenido de las cards UI
      backgroundColor: const Color.fromARGB(255, 239, 244, 245),
      
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
             children: [
              Padding(padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:const [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1
                         )]                   
                       ),
                       child:const Icon(FontAwesomeIcons.bars,
                       color: Colors.black,
                       ),
                    ),
                    Container(
                    padding: const EdgeInsets.all(8),
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:const [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1
                         )]                   
                       ),
                       child:   const badges.Badge(
                       badgeStyle: badges.BadgeStyle(
                        badgeColor: Colors.orange,
                        padding: EdgeInsets.all(4),),
                        badgeContent: Text("6", 
                        style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                         child: Icon(FontAwesomeIcons.bagShopping,
                         color: Colors.black,
                       ),
                       ), 
                    ),
                   ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color:  Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 5),
                        width: 300,
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Buscar"
                          ),
                        ),
                      ),
                     const Spacer(),
                     const Icon(Icons.search),
                    ],
                  ),
                ),
               const SizedBox(height: 30),
                RowItemWidget(),
               const SizedBox(height: 20),
                ArticolsGalery(), 
              ],
             )
            )
          ),
    );
  }
}
