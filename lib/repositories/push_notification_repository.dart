import 'dart:convert';

import '../api_request.dart';
import '../app_config.dart';
import '../data_model/device_token_update_response.dart';
import '../helpers/shared_value_helper.dart';

class PushNotificationRepository {
  Future<dynamic> getDeviceTokenUpdateResponse(String deviceToken) async {
    var postBody = jsonEncode({"device_token": deviceToken});

    String url = ("${AppConfig.BASE_URL}/profile/update-device-token");
    final response = await ApiRequest.post(
        url: url,
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${access_token.$}",
          "App-Language": app_language.$!,
        },
        body: postBody);

    return deviceTokenUpdateResponseFromJson(response.body);
  }
}
