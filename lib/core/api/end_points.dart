abstract class EndPoints {
  static const String baseUrl = "https://ecommerce.routemisr.com";
  static const String signUp = "/api/v1/auth/signup";
  static const String logIn = "/api/v1/auth/signin";
  static const String getAllCategory = "/api/v1/categories";
  static const String getAllBrand = "/api/v1/brands";
  static const String getSubCategoryOnCategory = "/subcategories";
  static const String getProductBaseOnCategory =
      "/api/v1/products?category[in]={categoryId}";
  static const String getCartProduct = "/api/v1/cart";
  static const String addToCart = "/api/v1/cart";
  static const String deleteFromCart = "/api/v1/cart/{productId}";
  static const String updateProductCountCart = "/api/v1/cart";
  static const String getWishlistData = "/api/v1/wishlist";
  static const String addToWishList = "/api/v1/wishlist";
  static const String deleteFromWishList = "/api/v1/wishlist/{productId}";
}
