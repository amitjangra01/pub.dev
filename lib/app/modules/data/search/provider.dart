import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vip_number/app/modules/data/search/search_model.dart';

class SearchState extends StateNotifier<SearchModel?> {
  SearchState() : super(null);

  SearchModel? get searchResults => state;

  Future<void> search({
    required int page,
    required String query,
  }) async {
    if (query.isEmpty) {
      state = null;
      return;
    }

    final Dio dio = Dio(
      BaseOptions(baseUrl: 'https://pub.dartlang.org/api'),
    );

    final packageResponse = await dio.get(
      '/search',
      queryParameters: {
        'page': '$page',
        'q': query,
      },
    );

    state = SearchModel.fromJson(packageResponse.data);
  }
}

final searchStateProvider =
    StateNotifierProvider<SearchState, SearchModel?>((ref) {
  return SearchState();
});














// Future<void> search({
//     required int page,
//     required String query,
//   }) async {
//     if (query.isEmpty) {
//       state = null;
//       return;
//     }

//     final Dio dio = Dio(
//       BaseOptions(baseUrl: "https://pub.dartlang.org/api/"),
//     );

//     final packageResponse = await dio.get(
//       'search',
//       queryParameters: {
//         'page': '$page',
//         'q': query,
//       },
//     );

//     state = SearchModel.fromJson(packageResponse.data);
//   }


// final searchStateProvider =
//     StateNotifierProvider<SearchState, SearchModel?>((ref) {
//   return SearchState();
// });
