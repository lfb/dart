// https://httpbin.org/ip 返回ip地址
import 'package:http/http.dart' as http;
import 'dart:convert';

Future getIPAddress() async {
  final url = 'https://httpbin.org/ip';
  final res = await http.get(url);
  String ip = jsonDecode(res.body)['origin'];

  return ip;
}

void main() async {
  try {
    final ip = await getIPAddress();
    print(ip); // 120.230.117.253
  } catch (err) {
    print(err);
  }
}
