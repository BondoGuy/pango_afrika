// ignore_for_file: constant_identifier_names

class AppConstants {
  static const String APP_NAME = "Pango Afrika";
  static const int APP_VERSION = 1;
  static const String BASE_URL = "http://192.168.43.186:8080";
  //http://mvs.bslmeiyu.com
  static const String POPULAR_PRODUCT_URI = "/api/v1/products/popular";
  static const String RECOMMENDED_PRODUCT_URI = "/api/v1/products/recommended";
  static const String REGISTRAION_URI = "/api/v1/auth/register";
  static const String LOGIN_URI = "/api/v1/auth/login";
  static const String USER_INFO_URI = "/api/v1/customer/info";
  static const String GEOCODE_URI = "/api/v1/config/geocode-api";
  static const String ADD_USER_ADDRESS = "api/v1/customer/address/add";
  static const String ADDRESS_LIST_URI = "api/v1/customer/address/list";

  static const String USER_ADDRESS = "user-address";
  static const String PICK_LOCATION_MAP = "pick-address";
  static const String SEARCH_LOCATION_URI =
      '/api/v1/config/place-api-autocomplete';

  static const String TOKEN = "";
  static const String PHONE = "";
  static const String EMAIL = "";
  static const String PASSWORD = "";
  static const String CART_LIST = "cart_list";
  static const String CART_HISTORY_LIST = "cart_history_list";
  static const String IMAGE_UPLOADS_URL = "/uploads/";
}
