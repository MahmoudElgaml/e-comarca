class CartDataEntity {
  CartDataEntity({
    this.numOfCartItems,
    this.data,
  });

  CartDataEntity.fromJson(dynamic json) {
    numOfCartItems = json['numOfCartItems'];
    data = json['data'] != null ? CartData.fromJson(json['data']) : null;
  }

  num? numOfCartItems;
  CartData? data;
}

class CartData {
  CartData({
    this.id,
    this.cartOwner,
    this.products,
    this.totalCartPrice,
  });

  CartData.fromJson(dynamic json) {
    id = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(CartProducts.fromJson(v));
      });
    }
    totalCartPrice = json['totalCartPrice'];
  }

  String? id;
  String? cartOwner;
  List<CartProducts>? products;

  num? totalCartPrice;
}

class CartProducts {
  CartProducts({
    this.count,
    this.id,
    this.product,
    this.price,
  });

  CartProducts.fromJson(dynamic json) {
    count = json['count'];
    id = json['_id'];
    product =
        json['product'] != null ? CartProduct.fromJson(json['product']) : null;
    price = json['price'];
  }

  num? count;
  String? id;
  CartProduct? product;
  num? price;
}

class CartProduct {
  CartProduct({
    this.id,
    this.title,
    this.quantity,
    this.imageCover,
    this.ratingsAverage,
  });

  CartProduct.fromJson(dynamic json) {
    id = json['_id'];
    title = json['title'];
    quantity = json['quantity'];
    imageCover = json['imageCover'];
    ratingsAverage = json['ratingsAverage'];
    id = json['id'];
  }

  String? id;
  String? title;
  num? quantity;
  String? imageCover;
  num? ratingsAverage;
}
