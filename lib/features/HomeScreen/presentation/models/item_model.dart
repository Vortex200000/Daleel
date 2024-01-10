class ItemModel {
  ItemModel({
    required this.image,
    required this.title,
    required this.rating,
    required this.price,
    required this.description,
  });
  late final String image;
  late final String title;
  late final double rating;
  late final double price;
  late final String description;

  ItemModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    rating = json['rating'];
    price = double.parse(json['price'].toString());
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['image'] = image;
    data['title'] = title;
    data['rating'] = rating;
    data['price'] = price;
    data['description'] = description;
    return data;
  }
}
