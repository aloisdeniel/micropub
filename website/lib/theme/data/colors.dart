import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ColorData extends Equatable {
  const ColorData({
    required this.heroBarBackground,
    required this.heroBarText1,
    required this.bodyAccentText1,
    required this.bodyBackground,
    required this.heroBarFieldBackground,
    required this.bodyText1,
    required this.heroBarFieldPlaceholder,
    required this.heroBarFieldText1,
    required this.heroBarText2,
    required this.primaryButtonBackground,
    required this.primaryButtonForeground,
    required this.destructiveButtonBackground,
    required this.destructiveButtonForeground,
    required this.barBarBackground,
    required this.barBarText1,
    required this.bodyHoverBackground,
    required this.tabsBackground,
    required this.tabsForeground,
    required this.tabsHoverForeground,
    required this.tabsSelectedForeground,
    required this.adminAccent,
    required this.readAccent,
    required this.writeAccent,
  });

  const ColorData.light()
      : heroBarBackground = const Color(0xFF132030),
        heroBarText1 = const Color(0xFFFFFFFF),
        heroBarText2 = const Color(0xFF7C8087),
        barBarBackground = const Color(0xFF1c2834),
        barBarText1 = const Color(0xFFFFFFFF),
        bodyBackground = const Color(0xFFFFFFFF),
        bodyHoverBackground = const Color(0xFFF9F9F9),
        bodyText1 = const Color(0xFF4a4a4a),
        heroBarFieldBackground = const Color(0xFF35404d),
        heroBarFieldText1 = const Color(0xFFFFFFFF),
        heroBarFieldPlaceholder = const Color(0xFF767778),
        bodyAccentText1 = const Color(0xFF0175c2),
        primaryButtonBackground = const Color(0xFF31b0fc),
        primaryButtonForeground = const Color(0xFF132030),
        destructiveButtonBackground = const Color(0xFFE9343F),
        destructiveButtonForeground = const Color(0xFF501014),
        tabsBackground = const Color(0xFFf5f5f7),
        tabsForeground = const Color(0xFF4a4a4a),
        tabsHoverForeground = const Color(0xFFDFDEDD),
        tabsSelectedForeground = const Color(0xFF1967d2),
        readAccent = const Color(0xff1967d2),
        writeAccent = const Color(0xffffa500),
        adminAccent = const Color.fromARGB(255, 136, 68, 196);

  final Color barBarBackground;
  final Color barBarText1;

  final Color tabsBackground;
  final Color tabsForeground;
  final Color tabsHoverForeground;
  final Color tabsSelectedForeground;

  final Color heroBarBackground;
  final Color heroBarText1;
  final Color heroBarText2;
  final Color heroBarFieldBackground;
  final Color heroBarFieldText1;
  final Color heroBarFieldPlaceholder;

  final Color primaryButtonBackground;
  final Color primaryButtonForeground;
  final Color destructiveButtonBackground;
  final Color destructiveButtonForeground;

  final Color readAccent;
  final Color writeAccent;
  final Color adminAccent;

  final Color bodyBackground;
  final Color bodyHoverBackground;
  // Paragraphs
  final Color bodyText1;
  // Package title, links
  final Color bodyAccentText1;

  @override
  List<Object?> get props => [
        heroBarBackground,
        heroBarText1,
        bodyBackground,
        bodyText1,
        bodyAccentText1,
        heroBarFieldBackground,
        heroBarFieldPlaceholder,
        heroBarFieldText1,
        primaryButtonBackground,
        primaryButtonForeground,
        tabsBackground,
      ];
}
