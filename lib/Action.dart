
import 'package:http/http.dart';

void loginAsync(String loginStr, String passStr) async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/acmilan/login';
  Map<String, String> headers = {"content-type": "application/json"};
  String json = "{\"username\":\"$loginStr\",\"password\":\"$passStr\"}";
  // make POST request
  Response response = await post(url, headers: headers, body: json);
  String body = response.body;
  print(body);
}
