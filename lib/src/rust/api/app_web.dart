// Web stub for Rust API - provides mock implementations
// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import 'internals.dart';

Future<List<InternalSource>> fetchSourceDetails() async {
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
  ];
}

Future<(List<InternalTorrent>, int?)> digTorrent({
  required String torrentName,
  required BigInt sourceIndex,
  required BigInt categoryIndex,
  required BigInt filterIndex,
  required BigInt sortingIndex,
  required BigInt sortingOrderIndex,
  int? page,
}) async {
  await Future.delayed(Duration(seconds: 1));
  return (
    [
      InternalTorrent(
        infoHash: 'web_demo',
        name: 'Web Demo - Install Android Studio or Visual Studio for full functionality',
        magnet: 'magnet:?xt=urn:btih:demo',
        size: '1.0 GB',
        date: '2024-11-24',
        seeders: '100',
        leechers: '50',
        totalDownloads: '500',
      ),
    ],
    null,
  );
}

Future<InternalIpDetails> getIpDetails() async {
  return InternalIpDetails(
    ipAddr: '127.0.0.1',
    isp: 'Web Demo',
    continent: 'Demo',
    country: 'Demo',
    capital: 'Demo',
    city: 'Demo',
    region: 'Demo',
    latitude: 0.0,
    longitude: 0.0,
    timezone: 'UTC',
    flagUnicode: '🌐',
    isVpn: false,
    isTor: false,
  );
}

Future<int> checkNewUpdate() async {
  return 0; // No update
}

Future<String> getAppCurrentVersion() async {
  return '1.1.2';
}

Future<List<(BigInt, String)>> getAllDefaultTrackersList() async {
  return [
    (BigInt.from(0), 'udp://tracker.demo:80'),
  ];
}

Future<bool> loadDefaultTrackersString() async {
  return true;
}

Future<String> getProcessedMagnetLink({required String unprocessedMagnet}) async {
  return unprocessedMagnet; // Return as-is for web
}

Future<List<String>> getCustomsDetails() async {
  return [];
}

Future<(List<InternalTorrent>, int?)> digCustomTorrents({
  required BigInt index,
}) async {
  return ([], null);
}
