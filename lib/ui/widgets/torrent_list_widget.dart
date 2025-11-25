import 'package:flutter/material.dart';
import 'package:torrents_digger/src/rust/api/internals.dart';
import 'package:torrents_digger/ui/widgets/torrent_card.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class TorrentListWidget extends StatelessWidget {
  final List<InternalTorrent> torrents;

  const TorrentListWidget({super.key, required this.torrents});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: TorrentCard(torrent: torrents[index]),
                ),
              ),
            );
          },
          childCount: torrents.length,
        ),
      ),
    );
  }
}
