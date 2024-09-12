var this_year = DateTime.now().year.toString();

class AppConfig {
  //this shows in the splash screen
  static String copyright_text = "@ Watan " + this_year;
  // static String copyright_text = "@ ActiveItZone " + this_year;
  //this shows in the splash screen
  static String app_name = "Watan Suppliers A";
  // static String app_name = "Active eCommerce seller app";
  //enter your purchase code for the app from codecanyon
  static String purchase_code = "2b1c6c1a-dfdd-4c4e-9537-a5207b476225";
 //com.activeitzone.active_ecommerce_seller_app
  /// Put your system key generated from this site https://activeitzone.com/activation
  ///  Just replace the system-key with your key

  // static String system_key = r"system-key";
  static String system_key = r"$2y$10$I2pTMbGILGsUf1qsJuDsaev/B303IbTqAa5JaDVu4ZePUEeS388WK";


  //Default language config
  static String default_currenncy = "USD";
  static String default_extange_rate = "1.0";
  static String default_language = "en";
  static String mobile_app_code = "en";
  static bool app_language_rtl = false;

  //configure this
  // localhost
  static const bool HTTPS = true;
  static const DOMAIN_PATH = "watan.website";
  //do not configure these below
  // https://domain.com/api/v2
  static const String API_ENDPATH = "api/v2";
  static const String PUBLIC_FOLDER = "public";
  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String SELLER_PREFIX = "seller";
  static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
  static const String BASE_URL = "${RAW_BASE_URL}/${API_ENDPATH}";
  // static const String BASE_URL = "${PATH}";
  static const String BASE_URL_WITH_PREFIX = "${BASE_URL}/${SELLER_PREFIX}";
}



// static const bool HTTPS = true;
// static const DOMAIN_PATH = "developers.activeitzone.com/ecommerce_seller_api";
// static const DOMAIN_PATH = "demo.activeitzone.com/ecommerce_flutter_demo";
// static const DOMAIN_PATH = "https://auth-db1500.hstgr.io/index.php?db=u179125959_shop";
// static const DOMAIN_PATH = "domain.com";
// static const PATH = "http://watan.website/";