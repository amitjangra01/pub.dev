import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:vip_number/app/modules/data/all_packages/provider.dart';
import 'package:vip_number/app/modules/data/other_providers.dart';
import '../response/package_response/package.dart';
import 'like_unlike_methods.dart';

final packageProvider =
    FutureProvider.family<Package, String>((ref, packageName) async {
  final Dio dio = ref.watch(
    dioProvider(
      BaseOptions(baseUrl: "https://pub.dartlang.org/api"),
    ),
  );

  var response = await dio.get(
    '/packages/$packageName',
  );

  return Package.fromJson(response.data);
});



final likeProvider = Provider<Function>((ref) {
  return ({
    required String packageName,
  }) async {
    final cancelToken = ref.cancelToken();
    final Dio dio = ref.watch(
      dioProvider(
        BaseOptions(baseUrl: "https://pub.dartlang.org/api"),
      ),
    );
    var result = await dio.put<void>(
      '/account/likes/$packageName',
      cancelToken: cancelToken,
      options: Options(
        headers: <String, String>{'authorization': userToken},
      ),
    );
    ref.refresh(metricsProvider(packageName));
    print(result);
  };
});



final unlikeProvider = Provider<Function>((ref) {
  return ({
    required String packageName,
  }) async {
    final cancelToken = ref.cancelToken();
    final Dio dio = ref.watch(
      dioProvider(
        BaseOptions(baseUrl: "https://pub.dartlang.org/api"),
      ),
    );
    await dio.delete<void>(
      '/account/likes/$packageName',
      cancelToken: cancelToken,
      options: Options(
        headers: <String, String>{'authorization': userToken},
      ),
    );
    ref.refresh(metricsProvider(packageName));
  };
});
