import 'package:http/http.dart' as http;
import 'package:madura_chandima_flutter_interview/configs/api_config.dart';

class NetworkService {
  Future getRequest(url) async {
    String httpUrl = ApiConfig().BASE_URL + url;
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    var response = await http.get(Uri.parse(httpUrl), headers: headers);
    return response;
  }
}
