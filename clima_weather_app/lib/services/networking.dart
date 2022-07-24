import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    /*var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');*/
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      debugPrint('Response Body: ${response.body}');

      var decodedData = jsonDecode(response.body);

      return decodedData;
    } else {
      debugPrint('Response Code: ${response.statusCode}');
    }
  }
}
