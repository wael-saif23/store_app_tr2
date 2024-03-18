
import 'package:flutter/material.dart';
import 'package:store_app_tr2/views/home_page.dart';
import 'package:store_app_tr2/views/update_product_page.dart';

void main() {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
   debugShowCheckedModeBanner: false,
   
      routes: {
        HomePage.id : (context) => const HomePage(),
         UpdateProductPage.id : (context) =>  UpdateProductPage()
      },
      initialRoute:  HomePage.id,
    );
  }
}