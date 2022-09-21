import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../all_packages_response/packages_response.dart';

final packageListProvider = FutureProvider<AllPackagesResponse?>((ref) async {
  final Dio dio = ref.watch(
    dioProvider(
      BaseOptions(baseUrl: "https://pub.dartlang.org/api"),
    ),
  );

  var response = await dio.get(
    '/packages',
  );
  return AllPackagesResponse.fromJson(response.data);
});

final dioProvider = Provider.family<Dio, BaseOptions>(
  (ref, options) {
    final Dio dio = Dio(options);
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
    return dio;
  },
);

extension CancelTokenX on Ref {
  CancelToken cancelToken() {
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    return cancelToken;
  }
}
