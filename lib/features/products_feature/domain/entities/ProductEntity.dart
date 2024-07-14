class ProductEntity {
  ProductEntity({
    this.data,
  });

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
