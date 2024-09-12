import 'package:active_ecommerce_seller_app/data_model/currency_response_model.dart';
import 'package:active_ecommerce_seller_app/helpers/shared_value_helper.dart';
import 'package:active_ecommerce_seller_app/helpers/system_config.dart';
import 'package:active_ecommerce_seller_app/repositories/currency_repository.dart';
import 'package:flutter/material.dart';

class CurrencyPresenter extends ChangeNotifier {
  List<CurrencyInfo> currencyList = [];

  fetchListData() async {
    currencyList.clear();
    var res = await CurrencyRepository().getListResponse();
    print("res.data ${system_currency.$}");
    print(res.data.toString());
    currencyList.addAll(res.data!);

    currencyList.forEach((element) {
      if (element.isDefault!) {
        SystemConfig.defaultCurrency = element;
        SystemConfig.systemCurrency = element;
        system_currency.$ = element.id;
        system_currency.save();
      }
      if (system_currency.$ == 0 && element.isDefault!) {
        SystemConfig.systemCurrency = element;
        system_currency.$ = element.id;
        system_currency.save();
      }
      if (system_currency.$ != null && element.id == system_currency.$) {
        SystemConfig.systemCurrency = element;
        system_currency.$ = element.id;
        system_currency.save();
      }
    });
    notifyListeners();
  }
}
