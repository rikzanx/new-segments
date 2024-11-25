import 'package:get/get.dart';

class ApiProvider extends GetConnect {
  Future<Response> getData(String url) => get(url);
}
