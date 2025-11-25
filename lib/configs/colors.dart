import 'package:flutter/material.dart';

import 'package:torrents_digger/configs/app_theme.dart';

class AppColors {
  static AppTheme currentTheme = DarkTheme();

  static Color get pureBlack => currentTheme.pureBlack;
  static Color get pureWhite => currentTheme.pureWhite;
  static Color get greenColor => currentTheme.greenColor;
  static Color get brightRed => currentTheme.brightRed;

  static Color get searchBarPlaceholderColor =>
      currentTheme.searchBarPlaceholderColor;
  static Color get searchBarBackgroundColor =>
      currentTheme.searchBarBackgroundColor;

  static Color get sourcesDropdownBackgroundColor =>
      currentTheme.sourcesDropdownBackgroundColor;
  static Color get categoriesDropdownBackgroundColor =>
      currentTheme.categoriesDropdownBackgroundColor;
  static Color get sourcesDropdownOpenedBackgroundColor =>
      currentTheme.sourcesDropdownOpenedBackgroundColor;
  static Color get categoriesDropdownOpenedBackgroundColor =>
      currentTheme.categoriesDropdownOpenedBackgroundColor;

  static Color get sourceLabelColor => currentTheme.sourceLabelColor;
  static Color get categoryLabelColor => currentTheme.categoryLabelColor;
  static Color get cardColor => currentTheme.cardColor;

  static Color get cardPrimaryTextColor => currentTheme.cardPrimaryTextColor;
  static Color get cardSecondaryTextColor => currentTheme.cardSecondaryTextColor;

  static Color get leechersIconColor => currentTheme.leechersIconColor;
  static Color get leechersTextColor => currentTheme.leechersTextColor;
  static Color get seedersIconColor => currentTheme.seedersIconColor;
  static Color get seedersTextColor => currentTheme.seedersTextColor;
  static Color get creationDateIconColor => currentTheme.creationDateIconColor;
  static Color get creationDateTextColor => currentTheme.creationDateTextColor;

  static Color get magnetBackgroundColor => currentTheme.magnetBackgroundColor;
  static Color get magnetForegroundColor => currentTheme.magnetForegroundColor;
  static Color get magnetIconColor => currentTheme.magnetIconColor;
  static Color get magnetButtonSurfaceTintColor =>
      currentTheme.magnetButtonSurfaceTintColor;

  static Color get bookmarkIconColor => currentTheme.bookmarkIconColor;
  static Color get bookmarkedIconColor => currentTheme.bookmarkedIconColor;

  static Color get addTrackersListUrlTextFieldBackgroundColor =>
      currentTheme.addTrackersListUrlTextFieldBackgroundColor;
  static Color get addTrackersListUrlTextButtonTextColor =>
      currentTheme.addTrackersListUrlTextButtonTextColor;
  static Color get addTrackersListUrlTextButtonBorderColor =>
      currentTheme.addTrackersListUrlTextButtonBorderColor;

  static Color get hyperlinkColor => currentTheme.hyperlinkColor;
  static Color get defaultTrackersInfoColor =>
      currentTheme.defaultTrackersInfoColor;
  static Color get textFormFieldInactiveColor =>
      currentTheme.textFormFieldInactiveColor;
  static Color get textFormFieldActiveColor =>
      currentTheme.textFormFieldActiveColor;
}

