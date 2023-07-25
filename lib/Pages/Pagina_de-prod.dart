import 'package:flutter/material.dart';

import '../models/Articols.dart';

class GaleryProducts extends StatelessWidget {
  const GaleryProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MyGridScreen(),
      ),
    );
  }
}
