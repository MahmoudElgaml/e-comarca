class ProductEntity {
  ProductEntity({
    this.data,
  });

  ProductEntity.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Product.fromJson(v));
      });
    }
  }

  List<Product>? data;
}

class Product {
  Product({
    this.sold,
    this.images,
    this.ratingsQuantity,
    this.id,
    this.title,
    this.description,
    this.quantity,
    this.price,
    this.imageCover,
    this.ratingsAverage,
  });

  Product.fromJson(dynamic json) {
    sold = json['sold'];
    images = json['images'] != null ? json['images'].cast<String>() : [];

    ratingsQuantity = json['ratingsQuantity'];
    id = json['_id'];
    title = json['title'];

    description = json['description'];
    quantity = json['quantity'];
    price = json['price'];
    imageCover = json['imageCover'];

    id = json['id'];
  }

  num? sold;
  List<String>? images;

  num? ratingsQuantity;
  String? id;
  String? title;

  String? description;
  num? quantity;
  num? price;
  String? imageCover;

  num? ratingsAverage;
}
