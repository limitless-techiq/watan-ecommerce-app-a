import 'package:active_ecommerce_seller_app/api_request.dart';
import 'package:active_ecommerce_seller_app/app_config.dart';
import 'package:active_ecommerce_seller_app/data_model/payment_history_response.dart';
import 'package:active_ecommerce_seller_app/helpers/shared_value_helper.dart';

class PaymentHistoryRepository {
  Future<PaymentHistoryResponse> getList({int page = 1}) async {
    String url =
        ("${AppConfig.BASE_URL_WITH_PREFIX}/payment-history" + "?page=${page}");

    // print("get order list url " + url.toString());

    final response = await ApiRequest.get(url: url, headers: {
      "Authorization": "Bearer ${access_token.$}",
      "App-Language": app_language.$!,
      "Currency-Code":AppConfig.default_currenncy,
      "Currency-Exchange-Rate": AppConfig.default_extange_rate,
    });
    return paymentHistoryResponseFromJson(response.body);
  }
}
