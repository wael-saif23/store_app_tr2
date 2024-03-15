import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app_tr2/widgets/custom_product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'home page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Style'),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(FontAwesomeIcons.cartPlus))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50,bottom: 8,left: 8,right: 8),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.6,
            mainAxisSpacing: 70,
            crossAxisSpacing: 10,
          ),
         
          itemBuilder: (BuildContext context, int index) {
            return const CustomProductCard() ;
          },
        ),
      ),
    );
  }
}

