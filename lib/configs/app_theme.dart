import 'package:flutter/material.dart';

abstract class AppTheme {
  String get name;
  Color get pureBlack;
  Color get pureWhite;
  Color get greenColor;
  Color get brightRed;

  Color get searchBarPlaceholderColor;
  Color get searchBarBackgroundColor;

  Color get sourcesDropdownBackgroundColor;
  Color get categoriesDropdownBackgroundColor;
  Color get sourcesDropdownOpenedBackgroundColor;
  Color get categoriesDropdownOpenedBackgroundColor;

  Color get sourceLabelColor;
  Color get categoryLabelColor;
  Color get cardColor;

  Color get cardPrimaryTextColor;
  Color get cardSecondaryTextColor;

  Color get leechersIconColor;
  Color get leechersTextColor;
  Color get seedersIconColor;
  Color get seedersTextColor;
  Color get creationDateIconColor;
  Color get creationDateTextColor;

  Color get magnetBackgroundColor;
  Color get magnetForegroundColor;
  Color get magnetIconColor;
  Color get magnetButtonSurfaceTintColor;

  Color get bookmarkIconColor;
  Color get bookmarkedIconColor;

  Color get addTrackersListUrlTextFieldBackgroundColor;
  Color get addTrackersListUrlTextButtonTextColor;
  Color get addTrackersListUrlTextButtonBorderColor;

  Color get hyperlinkColor;
  Color get defaultTrackersInfoColor;
  Color get textFormFieldInactiveColor;
  Color get textFormFieldActiveColor;
}

class DarkTheme extends AppTheme {
  @override
  String get name => 'Dark';
  @override
  Color get pureBlack => const Color.fromRGBO(0, 0, 0, 1);
  @override
  Color get pureWhite => const Color.fromRGBO(255, 255, 255, 1);
  @override
  Color get greenColor => const Color.fromRGBO(0, 255, 0, 1);
  @override
  Color get brightRed => const Color.fromRGBO(255, 0, 0, 1);

  @override
  Color get searchBarPlaceholderColor => const Color.fromRGBO(238, 241, 82, 1);
  @override
  Color get searchBarBackgroundColor => const Color.fromRGBO(17, 44, 39, 1);

  @override
  Color get sourcesDropdownBackgroundColor => const Color.fromRGBO(9, 74, 11, 1);
  @override
  Color get categoriesDropdownBackgroundColor =>
      const Color.fromRGBO(9, 74, 11, 1);
  @override
  Color get sourcesDropdownOpenedBackgroundColor =>
      const Color.fromRGBO(1, 1, 1, 1);
  @override
  Color get categoriesDropdownOpenedBackgroundColor =>
      const Color.fromRGBO(1, 1, 1, 1);

  @override
  Color get sourceLabelColor => const Color.fromRGBO(0, 255, 247, 1);
  @override
  Color get categoryLabelColor => const Color.fromRGBO(0, 255, 247, 1);
  @override
  Color get cardColor => const Color.fromRGBO(33, 33, 33, 1);

  @override
  Color get cardPrimaryTextColor => const Color.fromRGBO(255, 255, 255, 1);
  @override
  Color get cardSecondaryTextColor => const Color.fromRGBO(202, 188, 188, 1);

  @override
  Color get leechersIconColor => const Color.fromRGBO(255, 0, 0, 1);
  @override
  Color get leechersTextColor => const Color.fromRGBO(223, 33, 33, 1);
  @override
  Color get seedersIconColor => const Color.fromRGBO(0, 255, 38, 1);
  @override
  Color get seedersTextColor => const Color.fromRGBO(18, 204, 46, 1);
  @override
  Color get creationDateIconColor => const Color.fromRGBO(18, 204, 46, 1);
  @override
  Color get creationDateTextColor => const Color.fromRGBO(18, 204, 46, 1);

  @override
  Color get magnetBackgroundColor => const Color.fromRGBO(0, 0, 0, 1);
  @override
  Color get magnetForegroundColor => const Color.fromRGBO(0, 255, 132, 0.888);
  @override
  Color get magnetIconColor => const Color.fromRGBO(0, 247, 255, 1);
  @override
  Color get magnetButtonSurfaceTintColor => const Color.fromRGBO(247, 0, 255, 1);

  @override
  Color get bookmarkIconColor => const Color.fromRGBO(135, 200, 189, 1);
  @override
  Color get bookmarkedIconColor => const Color.fromRGBO(145, 255, 0, 1);

  @override
  Color get addTrackersListUrlTextFieldBackgroundColor =>
      const Color.fromARGB(255, 40, 52, 54);
  @override
  Color get addTrackersListUrlTextButtonTextColor =>
      const Color.fromARGB(255, 0, 255, 242);
  @override
  Color get addTrackersListUrlTextButtonBorderColor =>
      const Color.fromARGB(255, 41, 55, 57);

  @override
  Color get hyperlinkColor => const Color.fromRGBO(118, 131, 224, 1);
  @override
  Color get defaultTrackersInfoColor => const Color.fromRGBO(255, 255, 255, 0.7);
  @override
  Color get textFormFieldInactiveColor => const Color.fromRGBO(69, 130, 127, 1);
  @override
  Color get textFormFieldActiveColor => const Color.fromRGBO(0, 255, 0, 1);
}

class LightTheme extends AppTheme {
  @override
  String get name => 'Light';
  @override
  Color get pureBlack => const Color.fromRGBO(255, 255, 255, 1); // Inverted
  @override
  Color get pureWhite => const Color.fromRGBO(0, 0, 0, 1); // Inverted
  @override
  Color get greenColor => const Color.fromRGBO(0, 150, 0, 1); // Darker green
  @override
  Color get brightRed => const Color.fromRGBO(200, 0, 0, 1);

  @override
  Color get searchBarPlaceholderColor => const Color.fromRGBO(100, 100, 100, 1);
  @override
  Color get searchBarBackgroundColor => const Color.fromRGBO(240, 240, 240, 1);

  @override
  Color get sourcesDropdownBackgroundColor => const Color.fromRGBO(230, 230, 230, 1);
  @override
  Color get categoriesDropdownBackgroundColor =>
      const Color.fromRGBO(230, 230, 230, 1);
  @override
  Color get sourcesDropdownOpenedBackgroundColor =>
      const Color.fromRGBO(255, 255, 255, 1);
  @override
  Color get categoriesDropdownOpenedBackgroundColor =>
      const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color get sourceLabelColor => const Color.fromRGBO(0, 100, 100, 1);
  @override
  Color get categoryLabelColor => const Color.fromRGBO(0, 100, 100, 1);
  @override
  Color get cardColor => const Color.fromRGBO(245, 245, 245, 1);

  @override
  Color get cardPrimaryTextColor => const Color.fromRGBO(0, 0, 0, 1);
  @override
  Color get cardSecondaryTextColor => const Color.fromRGBO(80, 80, 80, 1);

  @override
  Color get leechersIconColor => const Color.fromRGBO(200, 0, 0, 1);
  @override
  Color get leechersTextColor => const Color.fromRGBO(180, 0, 0, 1);
  @override
  Color get seedersIconColor => const Color.fromRGBO(0, 180, 0, 1);
  @override
  Color get seedersTextColor => const Color.fromRGBO(0, 150, 0, 1);
  @override
  Color get creationDateIconColor => const Color.fromRGBO(0, 150, 0, 1);
  @override
  Color get creationDateTextColor => const Color.fromRGBO(0, 150, 0, 1);

  @override
  Color get magnetBackgroundColor => const Color.fromRGBO(255, 255, 255, 1);
  @override
  Color get magnetForegroundColor => const Color.fromRGBO(0, 150, 80, 1);
  @override
  Color get magnetIconColor => const Color.fromRGBO(0, 150, 150, 1);
  @override
  Color get magnetButtonSurfaceTintColor => const Color.fromRGBO(150, 0, 150, 1);

  @override
  Color get bookmarkIconColor => const Color.fromRGBO(80, 120, 110, 1);
  @override
  Color get bookmarkedIconColor => const Color.fromRGBO(100, 180, 0, 1);

  @override
  Color get addTrackersListUrlTextFieldBackgroundColor =>
      const Color.fromRGBO(230, 230, 230, 1);
  @override
  Color get addTrackersListUrlTextButtonTextColor =>
      const Color.fromRGBO(0, 100, 100, 1);
  @override
  Color get addTrackersListUrlTextButtonBorderColor =>
      const Color.fromRGBO(200, 200, 200, 1);

  @override
  Color get hyperlinkColor => const Color.fromRGBO(50, 50, 180, 1);
  @override
  Color get defaultTrackersInfoColor => const Color.fromRGBO(0, 0, 0, 0.7);
  @override
  Color get textFormFieldInactiveColor => const Color.fromRGBO(100, 100, 100, 1);
  @override
  Color get textFormFieldActiveColor => const Color.fromRGBO(0, 150, 0, 1);
}

class TokyoBlueTheme extends AppTheme {
  @override
  String get name => 'Tokyo Blue';
  @override
  Color get pureBlack => const Color(0xFF1a1b26); // Tokyo Night Background
  @override
  Color get pureWhite => const Color(0xFFc0caf5); // Tokyo Night Foreground
  @override
  Color get greenColor => const Color(0xFF9ece6a);
  @override
  Color get brightRed => const Color(0xFFf7768e);

  @override
  Color get searchBarPlaceholderColor => const Color(0xFF565f89);
  @override
  Color get searchBarBackgroundColor => const Color(0xFF24283b);

  @override
  Color get sourcesDropdownBackgroundColor => const Color(0xFF24283b);
  @override
  Color get categoriesDropdownBackgroundColor => const Color(0xFF24283b);
  @override
  Color get sourcesDropdownOpenedBackgroundColor => const Color(0xFF414868);
  @override
  Color get categoriesDropdownOpenedBackgroundColor => const Color(0xFF414868);

  @override
  Color get sourceLabelColor => const Color(0xFF7aa2f7);
  @override
  Color get categoryLabelColor => const Color(0xFFbb9af7);
  @override
  Color get cardColor => const Color(0xFF24283b);

  @override
  Color get cardPrimaryTextColor => const Color(0xFFc0caf5);
  @override
  Color get cardSecondaryTextColor => const Color(0xFF565f89);

  @override
  Color get leechersIconColor => const Color(0xFFf7768e);
  @override
  Color get leechersTextColor => const Color(0xFFf7768e);
  @override
  Color get seedersIconColor => const Color(0xFF9ece6a);
  @override
  Color get seedersTextColor => const Color(0xFF9ece6a);
  @override
  Color get creationDateIconColor => const Color(0xFF7dcfff);
  @override
  Color get creationDateTextColor => const Color(0xFF7dcfff);

  @override
  Color get magnetBackgroundColor => const Color(0xFF1a1b26);
  @override
  Color get magnetForegroundColor => const Color(0xFF7aa2f7);
  @override
  Color get magnetIconColor => const Color(0xFFbb9af7);
  @override
  Color get magnetButtonSurfaceTintColor => const Color(0xFFe0af68);

  @override
  Color get bookmarkIconColor => const Color(0xFF565f89);
  @override
  Color get bookmarkedIconColor => const Color(0xFFe0af68);

  @override
  Color get addTrackersListUrlTextFieldBackgroundColor => const Color(0xFF24283b);
  @override
  Color get addTrackersListUrlTextButtonTextColor => const Color(0xFF7aa2f7);
  @override
  Color get addTrackersListUrlTextButtonBorderColor => const Color(0xFF414868);

  @override
  Color get hyperlinkColor => const Color(0xFF7aa2f7);
  @override
  Color get defaultTrackersInfoColor => const Color(0xFFa9b1d6);
  @override
  Color get textFormFieldInactiveColor => const Color(0xFF565f89);
  @override
  Color get textFormFieldActiveColor => const Color(0xFF9ece6a);
}

class BlueTheme extends AppTheme {
  @override
  String get name => 'Blue';
  @override
  Color get pureBlack => const Color(0xFF0D1117); // GitHub Dark Dimmed
  @override
  Color get pureWhite => const Color(0xFFC9D1D9);
  @override
  Color get greenColor => const Color(0xFF238636);
  @override
  Color get brightRed => const Color(0xFFDA3633);

  @override
  Color get searchBarPlaceholderColor => const Color(0xFF8B949E);
  @override
  Color get searchBarBackgroundColor => const Color(0xFF161B22);

  @override
  Color get sourcesDropdownBackgroundColor => const Color(0xFF161B22);
  @override
  Color get categoriesDropdownBackgroundColor => const Color(0xFF161B22);
  @override
  Color get sourcesDropdownOpenedBackgroundColor => const Color(0xFF21262D);
  @override
  Color get categoriesDropdownOpenedBackgroundColor => const Color(0xFF21262D);

  @override
  Color get sourceLabelColor => const Color(0xFF58A6FF);
  @override
  Color get categoryLabelColor => const Color(0xFF58A6FF);
  @override
  Color get cardColor => const Color(0xFF161B22);

  @override
  Color get cardPrimaryTextColor => const Color(0xFFC9D1D9);
  @override
  Color get cardSecondaryTextColor => const Color(0xFF8B949E);

  @override
  Color get leechersIconColor => const Color(0xFFDA3633);
  @override
  Color get leechersTextColor => const Color(0xFFDA3633);
  @override
  Color get seedersIconColor => const Color(0xFF238636);
  @override
  Color get seedersTextColor => const Color(0xFF3FB950);
  @override
  Color get creationDateIconColor => const Color(0xFF58A6FF);
  @override
  Color get creationDateTextColor => const Color(0xFF58A6FF);

  @override
  Color get magnetBackgroundColor => const Color(0xFF0D1117);
  @override
  Color get magnetForegroundColor => const Color(0xFF58A6FF);
  @override
  Color get magnetIconColor => const Color(0xFF58A6FF);
  @override
  Color get magnetButtonSurfaceTintColor => const Color(0xFF1F6FEB);

  @override
  Color get bookmarkIconColor => const Color(0xFF8B949E);
  @override
  Color get bookmarkedIconColor => const Color(0xFFE3B341);

  @override
  Color get addTrackersListUrlTextFieldBackgroundColor => const Color(0xFF161B22);
  @override
  Color get addTrackersListUrlTextButtonTextColor => const Color(0xFF58A6FF);
  @override
  Color get addTrackersListUrlTextButtonBorderColor => const Color(0xFF30363D);

  @override
  Color get hyperlinkColor => const Color(0xFF58A6FF);
  @override
  Color get defaultTrackersInfoColor => const Color(0xFF8B949E);
  @override
  Color get textFormFieldInactiveColor => const Color(0xFF30363D);
  @override
  Color get textFormFieldActiveColor => const Color(0xFF238636);
}
