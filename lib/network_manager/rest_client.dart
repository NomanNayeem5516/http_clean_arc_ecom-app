import 'http_helper.dart';

class RestClient {
  static final HttpHelper _httpHelper = HttpHelper();
  static const String baseUrl = "https://api.escuelajs.co";



  static Future<dynamic> logIn(Object requestBody) async {
    Map<String, dynamic> response = await _httpHelper.post(
        url: "$baseUrl/api/v1/auth/login", requestBody: requestBody);
    return response;
  }
}
