import 'package:equatable/equatable.dart';
import 'package:website/theme/data/spacing.dart';

import 'colors.dart';
import 'radius.dart';
import 'sizes.dart';
import 'typography.dart';

class AppThemeData extends Equatable {
  const AppThemeData({
    required this.color,
    required this.typography,
    required this.spacing,
    required this.size,
    required this.radius,
  });

  AppThemeData.fallback()
      : color = const ColorData.light(),
        typography = TypographyData.regular(),
        spacing = const SpacingData.regular(),
        radius = const RadiusData.regular(),
        size = const SizesData.regular();

  final ColorData color;
  final TypographyData typography;
  final SpacingData spacing;
  final SizesData size;
  final RadiusData radius;

  @override
  List<Object?> get props => [
        color,
        typography,
        spacing,
        size,
        radius,
      ];
}
