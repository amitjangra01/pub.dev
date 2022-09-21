import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:vip_number/app/modules/data/all_packages_list_view/provider.dart';
import 'package:vip_number/app/modules/data/package/package.dart';

final packageProvider =
    FutureProvider.family<Package, String>((ref, packageId) async {
  final Dio dio = ref.watch(
    dioProvider(
      BaseOptions(baseUrl: "https://pub.dartlang.org/api"),
    ),
  );

  var response = await dio.get(
    '/packages/$packageId',
  );
  return Package.fromJson(response.data);
});
