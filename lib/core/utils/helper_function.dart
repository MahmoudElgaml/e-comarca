class HelperFunction {
  static String checkOnDiscount(num? price, num? priceAfterDiscount) {
    return priceAfterDiscount == null
        ? price.toString()
        : priceAfterDiscount.toString();
  }

  static bool checkQuantity(num quantity) {
    if (quantity == 1) {
      return false;
    } else {
      return true;
    }
  }


}
