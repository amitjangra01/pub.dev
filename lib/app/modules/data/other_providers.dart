import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'all_packages/provider.dart';
import 'response/metrics_response/metrics_response.dart';

final likesProvider =
    FutureProvider.family<MetricsResponse, String>((ref, packageName) async {
  final Dio dio = ref.watch(
    dioProvider(
      BaseOptions(baseUrl: "https://pub.dartlang.org/api/"),
    ),
  );

  var response = await dio.get(
    'packages/$packageName/metrics',
  );

  print(response);

  return MetricsResponse.fromJson(response.data);
});


