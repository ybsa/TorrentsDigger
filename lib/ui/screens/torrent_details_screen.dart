import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:torrents_digger/configs/colors.dart';
import 'package:torrents_digger/src/rust/api/internals.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class TorrentDetailsScreen extends StatelessWidget {
  final InternalTorrent torrent;

  const TorrentDetailsScreen({super.key, required this.torrent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureBlack,
      appBar: AppBar(
        backgroundColor: AppColors.pureBlack,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.greenColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Torrent Details",
          style: TextStyle(color: AppColors.greenColor),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Torrent Name
            Text(
              torrent.name,
              style: TextStyle(
                color: AppColors.pureWhite,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Info Grid
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 2.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                _buildInfoCard("Size", torrent.size, Icons.data_usage),
                _buildInfoCard("Date", torrent.date, Icons.calendar_today),
                _buildInfoCard("Seeders", torrent.seeders, Icons.arrow_upward,
                    color: Colors.green),
                _buildInfoCard("Leechers", torrent.leechers, Icons.arrow_downward,
                    color: Colors.red),
                _buildInfoCard(
                    "Downloads", torrent.totalDownloads, Icons.download),
              ],
            ),
            const SizedBox(height: 30),

            // Magnet Section
            Text(
              "Magnet Link",
              style: TextStyle(
                color: AppColors.greenColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.greenColor.withValues(alpha: 0.3)),
              ),
              child: Text(
                torrent.magnet,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: AppColors.cardPrimaryTextColor),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: torrent.magnet));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Magnet link copied!")),
                      );
                    },
                    icon: const Icon(Icons.copy),
                    label: const Text("Copy Link"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.cardColor,
                      foregroundColor: AppColors.greenColor,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      final Uri url = Uri.parse(torrent.magnet);
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Could not open magnet link")),
                          );
                        }
                      }
                    },
                    icon: const Icon(Icons.open_in_new),
                    label: const Text("Open Link"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.greenColor,
                      foregroundColor: AppColors.pureBlack,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Share.share(
                        'Check out this torrent: ${torrent.name}\n\nMagnet Link:\n${torrent.magnet}',
                      );
                    },
                    icon: const Icon(Icons.share),
                    label: const Text("Share"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.cardColor,
                      foregroundColor: AppColors.greenColor,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String value, IconData icon,
      {Color? color}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: color ?? AppColors.greenColor, size: 30),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: AppColors.cardSecondaryTextColor,
                    fontSize: 12,
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(
                    color: AppColors.cardPrimaryTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
