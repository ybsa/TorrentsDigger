import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torrents_digger/blocs/pagination_bloc/pagination_bloc.dart';
import 'package:torrents_digger/blocs/search_history_bloc/search_history_bloc.dart';
import 'package:torrents_digger/blocs/sources_bloc/source_bloc.dart';
import 'package:torrents_digger/blocs/torrent_bloc/torrent_bloc.dart';
import 'package:torrents_digger/ui/widgets/scaffold_messenger.dart';

class SearchHelper {
  static void performSearch({
    required BuildContext context,
    required String query,
  }) {
    final String torrentName = query.trim();
    final sourceState = context.read<SourceBloc>().state;

    // Reset pagination
    context.read<PaginationBloc>().add(ResetPagination());

    if (torrentName.isNotEmpty) {
      // Add to history
      context.read<SearchHistoryBloc>().add(AddSearchTerm(torrentName));

      if (sourceState.selectedSource != null &&
          sourceState.selectedDetails != null) {
        final details = sourceState.selectedDetails!;
        final bool categoriesOk = !details.queryOptions.categories ||
            (details.queryOptions.categories &&
                sourceState.selectedCategory != null);
        final bool filtersOk = !details.queryOptions.filters ||
            (details.queryOptions.filters &&
                sourceState.selectedFilter != null);
        final bool sortingsOk = !details.queryOptions.sortings ||
            (details.queryOptions.sortings &&
                sourceState.selectedSorting != null);
        final bool sortingsOrderOk = !details.queryOptions.sortingOrders ||
            (details.queryOptions.sortingOrders &&
                sourceState.selectedSortingOrder != null);

        if (!categoriesOk || !filtersOk || !sortingsOk || !sortingsOrderOk) {
          createSnackBar(
            message: "Use Available Options... :)",
            duration: 2,
          );
          return;
        }

        // Source
        List<String> listOfSources =
            sourceState.sources.map((source) => source.sourceName).toList();
        int sourceIndex = listOfSources.indexOf(
          sourceState.selectedSource!,
        );

        // Source Categories
        List<String> listOfCategories = sourceState.sources
            .firstWhere(
              (source) => source.sourceName == sourceState.selectedSource!,
            )
            .sourceDetails
            .categories;

        int categoryIndex = (listOfCategories.isNotEmpty &&
                sourceState.selectedCategory != null)
            ? listOfCategories.indexOf(
                sourceState.selectedCategory!,
              )
            : -1;

        // Source Filters
        List<String> listOfFilters = sourceState.sources
            .firstWhere(
              (source) => source.sourceName == sourceState.selectedSource!,
            )
            .sourceDetails
            .sourceFilters;

        int filterIndex =
            (listOfFilters.isNotEmpty && sourceState.selectedFilter != null)
                ? listOfFilters.indexOf(sourceState.selectedFilter!)
                : -1;

        // Source Sortings
        List<String> listOfSortings = sourceState.sources
            .firstWhere(
              (source) => source.sourceName == sourceState.selectedSource!,
            )
            .sourceDetails
            .sourceSortings;

        int sortingIndex =
            (listOfSortings.isNotEmpty && sourceState.selectedSorting != null)
                ? listOfSortings.indexOf(
                    sourceState.selectedSorting!,
                  )
                : -1;

        // Source Sorting Order
        List<String> listOfSortingOrders = sourceState.sources
            .firstWhere(
              (source) => source.sourceName == sourceState.selectedSource!,
            )
            .sourceDetails
            .sourceSortingOrders;

        int sortingOrderIndex = (listOfSortingOrders.isNotEmpty &&
                sourceState.selectedSortingOrder != null)
            ? listOfSortingOrders.indexOf(
                sourceState.selectedSortingOrder!,
              )
            : -1;

        context.read<TorrentBloc>().add(
              SearchTorrents(
                torrentName: torrentName,
                sourceIndex: sourceIndex,
                categoryIndex: categoryIndex,
                filterIndex: filterIndex,
                sortingIndex: sortingIndex,
                sortingOrderIndex: sortingOrderIndex,
              ),
            );
      } else {
        createSnackBar(
          message: "Use Available Options... :)",
          duration: 2,
        );
      }
    } else {
      createSnackBar(
        message: "Enter Torrent Name To Search... :)",
        duration: 2,
      );
    }
  }
}
