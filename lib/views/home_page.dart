import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'home page';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('New Style'),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon:const Icon( FontAwesomeIcons.cartPlus))
        ],
      ),
    );
  }
}
