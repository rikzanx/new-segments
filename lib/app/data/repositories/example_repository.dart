import '../providers/api_provider.dart';

class ExampleRepository {
  final ApiProvider apiProvider;

  ExampleRepository({required this.apiProvider});

  Future<List<dynamic>> fetchData() async {
    final response = await apiProvider.getData('/endpoint');
    return response.body;
  }
}