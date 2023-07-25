import 'package:flutter/material.dart';
import '../Pages/ArticolDetails.dart';

class ArticolsGalery extends StatelessWidget {
  const ArticolsGalery({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 10; i++) // esta pequeña linea auenta los container para hacer solo uno
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.all(9),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF475269).withOpacity(0.8),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ArticolDetails()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      'Assets/Images/$i.jpg',
                      height: 90,
                      width: 110,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Ropita 0-6 meses',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF475269),
                        ),
                      ),
                    )),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    '100% algodon',
                    style: TextStyle(
                      color: Color(0xFF475269),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '₡ 12500',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      /*   IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.black,
                          )), */
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}


// para redirecionar las imagenes de los container debo 
/**
 * cargar nuevas imagenes en el assets y nombrarlas con numero
 * para que el for pueda recorrerlas y poner una por cada container recorrido
 */