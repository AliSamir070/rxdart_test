class Constants{
  static String baseUrl = "http://192.168.1.15:9000/";
  static String baseUrl2 = "https://stingray-app-ojidz.ondigitalocean.app/";
  static String emailRegix = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
  static String getAllOrders = "orders/";
  static String loginMethodUrl = "auth/jwt/create/";
  static String registerMethodUrl = "auth/users/";
  static String changePasswordMethodeUrl = "auth/users/set_password/";
  static String collectionsUrl = "collections/";
  static String meatShopProductsUrl = "products/";

  static String cartUrl = "carts/";
  static String cartOnlyUrl(int id) => "carts/$id/";
  static String deleteCartItemUrl(int cartId , int cartItemId)=>"carts/$cartId/items/$cartItemId/";
  static String addItemToCart(int id) => 'carts/$id/items/' ;
  static String updateCartItemQuantityUrl(int cartId , int cartItemId)=>"carts/$cartId/items/$cartItemId/?quantity";
  static String profileUrl = 'auth/users/me/';
  static String customerUrl = 'customers/me/';
  static String dynamicLink = 'https://graysanddannys.page.link';
  static String createOrderLink = 'orders/';
  static String updateOrderUrl(int id) => "orders/$id/";
  static String resetPassUrl = "auth/users/reset_password/";
  static String resetConfirmPassUrl = "auth/users/reset_password_confirm/";
  static String shippingAddressUrl = 'shippingaddress/';
  static String UpdateShippingAddressUrl(int id) => 'shippingaddress/$id/';
  static String specialsUrl = "specials/";
  static String stripeUrl(int id) => "payment/order/$id";
  // search and filter endPoints
  static String get filterProductsUrl {
    return '$baseUrl2$meatShopProductsUrl';
  }

  static String specificProduct({required int productId}) {
    return '$baseUrl2$meatShopProductsUrl$productId/';
  }

  static String specificCollection({required int collectionId}) {
    return '$baseUrl2$collectionsUrl$collectionId/';
  }

  static int limit = 16;
  static int sliderMin = 0;
  static int sliderMax = 99999;
}