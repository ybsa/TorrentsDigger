import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torrents_digger/blocs/sources_bloc/source_bloc.dart';
import 'package:torrents_digger/configs/colors.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SourceBloc, SourceState>(
      builder: (context, state) {
        if (state.selectedSource == null) return const SizedBox.shrink();

        if (state.sources.isEmpty) return const SizedBox.shrink();

        // Find the current source details to get categories
        final source = state.sources.firstWhere(
          (s) => s.sourceName == state.selectedSource,
          orElse: () => state.sources.first,
        );

        final categories = source.sourceDetails.categories;
        if (categories.isEmpty) return const SizedBox.shrink();

        return SizedBox(
          height: 90,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final category = categories[index];
              final isSelected = state.selectedCategory == category;
              return _CategoryItem(
                category: category,
                isSelected: isSelected,
                onTap: () {
                  context.read<SourceBloc>().add(
                        SourceEvent.changeCategory(category: category),
                      );
                },
              );
            },
          ),
        );
      },
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final String category;
  final bool isSelected;
  final VoidCallback onTap;

  const _CategoryItem({
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  IconData _getIconForCategory(String category) {
    final lower = category.toLowerCase();
    if (lower.contains('movie') || lower.contains('video')) {
      return Icons.movie;
    } else if (lower.contains('tv') || lower.contains('show')) {
      return Icons.tv;
    } else if (lower.contains('game')) {
      return Icons.games;
    } else if (lower.contains('music') || lower.contains('audio')) {
      return Icons.music_note;
    } else if (lower.contains('app') || lower.contains('soft')) {
      return Icons.apps;
    } else if (lower.contains('book')) {
      return Icons.book;
    } else if (lower.contains('xxx') || lower.contains('porn')) {
      return Icons.explicit;
    }
    return Icons.category;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.greenColor.withOpacity(0.2)
              : AppColors.cardColor,
          borderRadius: BorderRadius.circular(12),
          border: isSelected
              ? Border.all(color: AppColors.greenColor, width: 2)
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _getIconForCategory(category),
              color: isSelected
                  ? AppColors.greenColor
                  : AppColors.cardSecondaryTextColor,
              size: 30,
            ),
            const SizedBox(height: 8),
            Text(
              category,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: isSelected
                    ? AppColors.greenColor
                    : AppColors.cardSecondaryTextColor,
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
