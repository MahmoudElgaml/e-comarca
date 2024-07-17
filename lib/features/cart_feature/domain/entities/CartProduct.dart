class CartData {
  CartData({
    this.id,
    this.cartOwner,
    this.products,
  });

  CartData.fromJson(dynamic json) {
    id = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
  }

  String? id;
  String? cartOwner;
  List<Products>? products;
}

class Products {
  Products({
    this.count,
    this.id,
    this.product,
    this.price,
  });

  Products.fromJson(dynamic json) {
    count = json['count'];
    id = json['_id'];
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
    price = json['price'];
  }

  num? count;
  String? id;
  Product? product;
  num? price;
}

class Product {
  Product({
    this.id,
    this.title,
    this.quantity,
    this.imageCover,
    this.ratingsAverage,
  });

  Product.fromJson(dynamic json) {
    id = json['_id'];
    title = json['title'];
    quantity = json['quantity'];
    imageCover = json['imageCover'];

    ratingsAverage = json['ratingsAverage'];
  }

  String? id;
  String? title;
  num? quantity;
  String? imageCover;

  num? ratingsAverage;
}
