import 'package:active_ecommerce_seller_app/api_request.dart';
import 'package:active_ecommerce_seller_app/app_config.dart';
// import 'package:active_ecommerce_seller_app/data_model/addons_response.dart';
// import 'package:active_ecommerce_seller_app/data_model/currency_response.dart';
import 'package:active_ecommerce_seller_app/data_model/currency_response_model.dart';
// import 'package:active_ecommerce_seller_app/repositories/api-request.dart';
import 'package:http/http.dart' as http;

class CurrencyRepository{
Future<CurrencyResponse> getListResponse() async{
  String url=('${AppConfig.BASE_URL}/currencies');

  final response = await ApiRequest.get(url: url);
  // print("response.body.toString()");
  // print(response.body.toString());
  return currencyResponseFromJson(response.body);
}
}