// https://httpbin.org/ip 返回ip地址
import 'package:http/http.dart' as http;
import 'dart:convert';

Future getIPAddress() {
  final url = 'https://httpbin.org/ip';
  return http.get(url).then((res) {
    String ip = jsonDecode(res.body)['origin'];
    return ip;
  });
}

void main(List<String> args) {
  // 120.230.117.253
  getIPAddress().then((ip) => print(ip)).catchError((error) => print(error));
}
