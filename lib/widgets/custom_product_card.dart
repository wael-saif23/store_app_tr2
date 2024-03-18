import 'package:flutter/material.dart';
import 'package:store_app_tr2/models/products_modle.dart';
import 'package:store_app_tr2/views/update_product_page.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    super.key,
    required this.product,
  });
  final ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.3),
                  offset: const Offset(5, 5),
                  blurRadius: 10)
            ]),
            child: Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 8, right: 8, bottom: 16),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title.substring(0, 10),
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(r'$' " " '${product.price}'),
                          InkWell(
                              onTap: () {}, child: const Icon(Icons.favorite))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -50,
            right: 20,
            child: SizedBox(
                width: 100, height: 100, child: Image.network(product.image)),
          )
        ],
      ),
    );
  }
}
