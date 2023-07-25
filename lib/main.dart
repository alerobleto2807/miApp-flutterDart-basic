import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'NavBar.dart';
import 'Pages/home.dart';


final Uri url = Uri.parse('https://walink.co/45fa7d');
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Litle Dreams Shop',
      home:
          HomePage(title: 'Little Dreams'), // pagina principal que se mostrara
    );
  }
}



class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String eleBtn = 'Elevation Button';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              Color.fromARGB(255, 13, 114, 117),
              Color.fromARGB(255, 170, 16, 5)
            ]),
          ),
        ),
        title: const Text(
          'Little Dreams',
          style: TextStyle(),
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(FontAwesomeIcons.bagShopping, color: Colors.white),
          ),
        ],
      ),
      body: Home(), 
      //segundo elemento
      drawer: NavBar(),
      //tercer elemnto
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
         onPressed: ()  {
           launchUrl(Uri.parse('https://walink.co/45fa7d'));
        }, 
        tooltip: 'Contacta al proveedor',
        child: const Icon(FontAwesomeIcons.whatsapp),
      ),
      //cuarto elemento
      bottomNavigationBar: const BottomAppBar(
        /*      color: Color.fromARGB(255, 230, 140, 209), */
        shape: CircularNotchedRectangle(),
        child: (Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: null,
                icon: Icon(FontAwesomeIcons.instagram,
                    color: Color.fromARGB(255, 121, 119, 119))),
            IconButton(
                onPressed: null,
                icon: Icon(FontAwesomeIcons.facebook,
                    color: Color.fromARGB(255, 121, 119, 119))),
            IconButton(
                onPressed: null,
                icon: Icon(FontAwesomeIcons.truckFast,
                    color: Color.fromARGB(255, 121, 119, 119))),
          ],
        )),
      ),
    );
  }
}
