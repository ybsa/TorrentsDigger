import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torrents_digger/blocs/search_history_bloc/search_history_bloc.dart';
import 'package:torrents_digger/configs/colors.dart';
import 'package:torrents_digger/routes/routes_name.dart';
import 'package:torrents_digger/ui/widgets/popup_menu_button_widget.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.searchController,
    required this.onSearchPressed,
  });

  final TextEditingController searchController;
  final VoidCallback onSearchPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.searchBarBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Row(
        children: [
          Text(
            "-> ",
            style: TextStyle(color: AppColors.greenColor, fontSize: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: SearchAnchor(
              searchController: searchController,
              viewBackgroundColor: AppColors.cardColor,
              viewHintText: 'Search Torrent',
              headerTextStyle: TextStyle(color: AppColors.pureWhite),
              viewLeading: IconButton(
                icon: const Icon(Icons.arrow_back),
                color: AppColors.greenColor,
                onPressed: () {
                  Navigator.pop(context);
                  FocusScope.of(context).unfocus();
                },
              ),
              builder: (BuildContext context, SearchController controller) {
                return TextField(
                  controller: searchController,
                  style: const TextStyle(color: Colors.white),
                  onSubmitted: (_) {
                    onSearchPressed();
                  },
                  onTap: () {
                    controller.openView();
                  },
                  decoration: InputDecoration(
                    hintText: 'Search Torrent',
                    hintStyle: TextStyle(
                      color: AppColors.searchBarPlaceholderColor,
                    ),
                    border: InputBorder.none,
                  ),
                );
              },
              suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
                return [
                  BlocBuilder<SearchHistoryBloc, SearchHistoryState>(
                    builder: (context, state) {
                      if (state is SearchHistoryLoaded) {
                        if (state.history.isEmpty) {
                          return const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Center(child: Text("No Recent Searches")),
                          );
                        }
                        return Column(
                          children: [
                            ...state.history.map((term) {
                              return ListTile(
                                leading: const Icon(Icons.history),
                                title: Text(term),
                                onTap: () {
                                  searchController.text = term;
                                  controller.closeView(term);
                                  onSearchPressed();
                                },
                                trailing: IconButton(
                                  icon: const Icon(Icons.north_west),
                                  onPressed: () {
                                    searchController.text = term;
                                  },
                                ),
                              );
                            }),
                            const Divider(),
                            TextButton(
                              onPressed: () {
                                context
                                    .read<SearchHistoryBloc>()
                                    .add(ClearHistory());
                              },
                              child: const Text("Clear History"),
                            ),
                          ],
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ];
              },
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: onSearchPressed,
            child: Icon(Icons.search, color: AppColors.greenColor, size: 25),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.aiChatScreen);
            },
            child: Icon(Icons.smart_toy, color: AppColors.greenColor, size: 25),
          ),
          const SizedBox(width: 10),
          PopupMenuButtonWidget(),
        ],
      ),
    );
  }
}
