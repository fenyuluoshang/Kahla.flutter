import 'package:dio/dio.dart';
import 'package:kahla/api/ApiStart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthApi {
  static AuthResult(String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var resp = await ApiBase.dio.get(
        await ApiBase.createUrl('/Auth/AuthResult?State=flutter&Code=' + code));

    print(resp.statusCode);
    print(resp.data);
    resp.headers.forEach((key, values) {
      print(key + ' ' + values.toString());
    });
  }
}
