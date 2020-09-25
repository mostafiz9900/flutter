class Product {
  final int id;
  final String name;
  final double price, rate;
  final String description;

  bool isFavorite = false;

  Product({this.id, this.name, this.price, this.rate, this.description});

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['Product ID'],
      name: json['Name'],
      price: json['Price'].toDouble(),
      rate: json['Rating Avg'].toDouble(),
      description: json['Description'],
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
