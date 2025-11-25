import 'package:torrents_digger/src/rust/api/internals.dart';

Future<List<InternalSource>> initialSourceDetailsData() async {
  // Web stub - returns mock data
  return [
    InternalSource(
      sourceName: '1337x',
      sourceDetails: InternalSourceDetails(
        queryOptions: InternalQueryOptions(
          categories: true,
          filters: false,
          sortings: true,
          sortingOrders: true,
          pagination: true,
        ),
        categories: ['All', 'Movies', 'TV', 'Games', 'Music', 'Apps', 'Anime'],
        sourceFilters: [],
        sourceSortings: ['Seeders', 'Size', 'Time'],
        sourceSortingOrders: ['Ascending', 'Descending'],
      ),
    ),
    InternalSource(
      sourceName: 'ThePirateBay',
      sourceDetails: InternalSourceDetails(
        queryOptions: InternalQueryOptions(
          categories: true,
          filters: false,
          sortings: false,
          sortingOrders: false,
          pagination: true,
        ),
        categories: ['All', 'Video', 'Audio', 'Applications', 'Games'],
        sourceFilters: [],
        sourceSortings: [],
        sourceSortingOrders: [],
      ),
    ),
  ];
}
