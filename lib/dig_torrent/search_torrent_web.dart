import 'package:torrents_digger/src/rust/api/internals.dart';

Future<(List<InternalTorrent>, int?)> searchTorrent({
  required String torrentName,
  required int sourceIndex,
  required int filterIndex,
  required int categoryIndex,
  required int sortingIndex,
  required int sortingOrderIndex,
  int? page,
}) async {
  // Web stub - returns mock torrent data
  await Future.delayed(Duration(seconds: 1)); // Simulate network delay
  
  return (
    [
      InternalTorrent(
        infoHash: 'mock_hash_1',
        name: 'Demo Torrent - Web Version (Search functionality requires native build)',
        magnet: 'magnet:?xt=urn:btih:mock',
        size: '1.5 GB',
        date: '2024-11-24',
        seeders: '100',
        leechers: '50',
        totalDownloads: '500',
      ),
      InternalTorrent(
        infoHash: 'mock_hash_2',
        name: 'Note: This is a demo UI - Install Android Studio or VS2022 for full functionality',
        magnet: 'magnet:?xt=urn:btih:mock2',
        size: '2.3 GB',
        date: '2024-11-23',
        seeders: '75',
        leechers: '25',
        totalDownloads: '300',
      ),
    ],
    null, // No next page in demo
  );
}
