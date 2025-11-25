import 'package:flutter/material.dart';
import 'package:torrents_digger/configs/colors.dart';
import 'package:torrents_digger/ui/widgets/dropdowns_ui.dart';
import 'package:torrents_digger/ui/widgets/search_bar_widget.dart';
import 'package:torrents_digger/ui/widgets/settings_button.dart';
import 'package:torrents_digger/ui/widgets/torrents_list_ui.dart';
import 'package:torrents_digger/ui/widgets/category_selector.dart';
import 'package:torrents_digger/utils/search_helper.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      floatingActionButton: SettingButton(),
      backgroundColor: AppColors.pureBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 7.0),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              // SearchBar Widget
              SliverToBoxAdapter(
                child: SearchBarWidget(
                  searchController: searchController,
                  onSearchPressed: () {
                    SearchHelper.performSearch(
                      context: context,
                      query: searchController.text,
                    );
                  },
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              // Visual Categories
              const SliverToBoxAdapter(child: CategorySelector()),
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              // Dropdowns Ui
              const SliverToBoxAdapter(child: DropdownsUi()),

              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              const TorrentsListUi(),
            ],
          ),
        ),
      ),
    );
  }
}
