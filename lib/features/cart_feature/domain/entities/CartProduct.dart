class CartDataEntity {
  CartDataEntity({
    this.id,
    this.cartOwner,
    this.products,
  });

  CartDataEntity.fromJson(dynamic json) {
    id = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(ProductsData.fromJson(v));
      });
    }
  }

  String? id;
  String? cartOwner;
  List<ProductsData>? products;
}

class ProductsData {
  ProductsData({
    this.count,
    this.id,
    this.product,
    this.price,
  });

  ProductsData.fromJson(dynamic json) {
    count = json['count'];
    id = json['_id'];
    product =
        json['product'] != null ? ProductData.fromJson(json['product']) : null;
    price = json['price'];
  }

  num? count;
  String? id;
  ProductData? product;
  num? price;
}

class ProductData {
  ProductData({
    this.id,
    this.title,
    this.quantity,
    this.imageCover,
    this.ratingsAverage,
  });

  ProductData.fromJson(dynamic json) {
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
