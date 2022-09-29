import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:vip_number/app/modules/data/all_packages/provider.dart';
import '../response/package_response/package.dart';

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
