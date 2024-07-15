class HelperFunction{

  static String checkOnDiscount(num? price,num? priceAfterDiscount) {
    return priceAfterDiscount == null
        ? price.toString()
        : priceAfterDiscount.toString();
  }

}