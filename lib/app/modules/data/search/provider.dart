import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vip_number/app/modules/data/response/all_packages_response/packages_response.dart';


class SearchState extends StateNotifier<List<AllPackagesResponse>> {
  SearchState() : super([]);

  List<AllPackagesResponse> get searchResults => state;

  Future<void> search(String query, String packageName) async {
    if (query.isEmpty) {
      state = [];
      return;
    }

    
    
  }
}

final searchState = StateNotifierProvider<SearchState, List<AllPackagesResponse>>((ref)  {
  return SearchState();
});