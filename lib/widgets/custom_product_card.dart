import 'package:flutter/material.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.grey.withOpacity(.3),
              offset:const Offset(5, 5),
              blurRadius: 10
            )]
          ),
          height: 130,
          width: 200,
          child: Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "handpag lv",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(r'$225'),
                        InkWell(
                          onTap: (){},
                          child: const Icon(Icons.favorite))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
     Positioned(
      top: -60,
      right: 20,
       child: SizedBox(
        width: 80,
        child: Image.network("https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg")),
     )
      ],
    );
  }
}
