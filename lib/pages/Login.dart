import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:kahla/pluging/pluging.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginPage> {

  //oauth page url
  final String pageurl = "/Auth/OAuth";
  //use for clean cookie
  final CookieManager cookieManager = CookieManager();

  String url = "Login For Kahla";

  _updateUrl(String newurl) {
    setState(() {
      url = newurl;
    });
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: __initWebView(),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: Text(url),
            ),
            body: WebView(
              initialUrl: 'https://' + snapshot.data + pageurl,
              navigationDelegate: (NavigationRequest request) {
                print(request.url);
                if (request.url.startsWith(
                    "https://" + snapshot.data + '/Auth/AuthResult')) {
                  print('cache');
                  String datas = request.url.split('?')[1];
                  var params = datas.split('&');
                  String code;
                  params.forEach((e) {
                    var keyval = e.split('=');
                    print(keyval[0] + " : " + keyval[1]);
                    if (keyval[0] == 'code') code = keyval[1];
                  });
                  print(code);
                  Navigator.pop(context);
                  return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text('Login For Kahla'),
            ),
            body: Text('loading config...'),
          );
        }
      },
    );

  }

  Future<bool> cleanCookie() async {
    await cookieManager.clearCookies();
    return true;
  }

  Future<String> __getServer() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String serverName = prefs.getString("server");
    if (serverName == null) {
      serverName = 'staing';
      prefs.setString("server", serverName);
    }
    return servers[serverName];
  }

  Future<String> __initWebView() async {
    await cleanCookie();
    return await __getServer();
  }
}
