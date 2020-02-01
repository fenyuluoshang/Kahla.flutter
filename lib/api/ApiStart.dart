import 'package:kahla/pluging/pluging.dart' as plug;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

class ApiBase {

  static Dio dio = new Dio();

  static Future<String> getServer() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String serverName = prefs.getString("server");
    if (serverName == null) {
      serverName = plug.defaultServerName;
      prefs.setString("server", serverName);
    }
    return plug.servers[serverName];
  }

  static Future<String> createUrl(String url) async {
    if (url.startsWith('/'))
      return 'https://' + (await getServer()) + url;
    else
      return 'https://' + (await getServer()) + '/' + url;
  }
}
