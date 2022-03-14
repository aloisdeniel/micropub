import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ColorData extends Equatable {
  const ColorData({
    required this.actionBarBackground,
    required this.actionBarText1,
    required this.bodyAccentText1,
    required this.bodyBackground,
    required this.bodyText1,
  });

  const ColorData.light()
      : actionBarBackground = const Color(0xFF132030),
        actionBarText1 = const Color(0xFFFFFFFF),
        bodyBackground = const Color(0xFFFFFFFF),
        bodyText1 = const Color(0xFF4a4a4a),
        bodyAccentText1 = const Color(0xFF0175c2);

  final Color actionBarBackground;
  final Color actionBarText1;

  final Color bodyBackground;
  // Paragraphs
  final Color bodyText1;
  // Package title, links
  final Color bodyAccentText1;

  @override
  List<Object?> get props => [
        actionBarBackground,
        actionBarText1,
        bodyBackground,
        bodyText1,
        bodyAccentText1,
      ];
}
