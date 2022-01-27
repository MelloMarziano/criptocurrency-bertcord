// ignore_for_file: prefer_final_fields

import 'package:cripto_currency_app/models/CriptoCurrency.dart';
import 'package:dio/dio.dart';

class Repository {
  static String url = 'https://pro-api.coinmarketcap.com/v1/';
  final String apiKey = '2e15ee4f-03cf-4b6b-bb7b-4fab1d626618';

  Dio _dio = Dio();

  Future<CriptoCurrencyModel> getAllCriptos(int limit) async {
    var currencyApiType =
        '${url}cryptocurrency/listings/latest?start=1&limit=$limit&convert=USD';
    _dio.options.headers["X-CMC_PRO_API_KEY"] = apiKey;
    Response response = await _dio.get(currencyApiType);
    return CriptoCurrencyModel.fromJson((response.data));
  }
}
