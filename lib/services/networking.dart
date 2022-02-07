import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  String url;
  NetworkHelper({this.url});

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String theDataResponse = response.body;
      var decodedText =
          jsonDecode(theDataResponse);
          return decodedText;
    } else {
      print(response.statusCode);
    }
  }
}
