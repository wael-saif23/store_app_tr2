
import 'package:flutter/material.dart';
import 'package:store_app_tr2/views/home_page.dart';

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
        HomePage.id : (context) => const HomePage()
      },
      initialRoute:  HomePage.id,
    );
  }
}