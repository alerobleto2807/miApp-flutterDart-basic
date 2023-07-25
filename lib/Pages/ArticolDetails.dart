import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/buttonAddcar.dart';


class ArticolDetails extends StatelessWidget {
  const ArticolDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F9FD),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                        color: Color(0xFF475269),
                        blurRadius: 2,
                        spreadRadius: 1
                        ),
                      ],
                      ),
                      child: const Icon(Icons.arrow_back,
                      color: Color(0xFF475269),
                      size: 30,
                      ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F9FD),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                        color: Color(0xFF475269),
                        blurRadius: 2,
                        spreadRadius: 1
                        ),
                      ],
                      ),
                      child: const Icon(Icons.favorite,
                      color: Color.fromARGB(255, 196, 25, 13),
                      size: 30,
                      ),
                  ),
              ],
            ),
          ),
        /*   const SizedBox(height: 8), */
          Container(
            height: MediaQuery.of(context).size.height * 0.37,
            child:  Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 270,
                width: 290,
                margin: const EdgeInsets.only(top: 20, ),
                decoration: BoxDecoration(
                  color: const Color(0xFF475269),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
               Image.asset( 'Assets/Images/1.jpg',
              height: 240,
              width: 240,
              fit: BoxFit.contain,
              )
            ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF475269),
                  blurRadius: 5,
                  spreadRadius: 1
                ),
              ],
               ),
               child:  Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Ropita bb',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF475269),
                       ),
                      ),
                      Text('₡ 12,500',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                       ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Container(
                  alignment: Alignment.centerLeft,
                  child: RatingBar.builder(
                    initialRating: 4,
                    minRating: 1, 
                    direction: Axis.horizontal,
                    itemSize: 20,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4), 
                    onRatingUpdate: (double value) {  },
                    itemBuilder:(context, _) => const Icon(FontAwesomeIcons.solidStar,
                    color: Color.fromARGB(255, 231, 198, 11),
                    ),
                   ),  
                  ),
                  const Text(
                    "La descripción es un discurso (oral o escrito) que detalla y explica las características de un lugar, persona, animal, cosa o situación."
                    ),
                    const SizedBox(height: 15),
                     Row(children: [
                      const Text("Size: ", 
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF475269),
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                       const SizedBox(width: 10),
                       Row(
                        children:[
                        for(int i = 5; i < 10; i++)
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration:  BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xFF475269),
                                blurRadius: 3,
                                spreadRadius: 1,
                              ),
                            ],
                             ),
                             child: Text(i.toString(),
                             style: const TextStyle(
                              fontWeight: FontWeight.bold
                             ),
                             ),
                        ),
                       ],),
                    ],)
                ],
               ),
          ),
        ],
      )),
        bottomNavigationBar: ButtonAddcar(),  
    );
  }
}

/**para el caso de los cuadritos con textos se debe quitar el for 
 * y luego hay que generar varias text con la propiedad select
 */