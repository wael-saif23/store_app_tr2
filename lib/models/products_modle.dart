class ProductsModel {
  final int id;
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;
  ProductsModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory ProductsModel.fromjson(jsondata) {
    return ProductsModel(
        id: jsondata['id'],
        title: jsondata['title'],
        price: jsondata['price'],
        description: jsondata['description'],
        category: jsondata['category'],
        image: jsondata['image'],
        rating: RatingModel.formjson(
          jsondata['rating'],
        ));
  }
}

class RatingModel {
  final num rate;
  final num count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.formjson(json) {
    return RatingModel(rate: json['rate'], count: json['count']);
  }
}
