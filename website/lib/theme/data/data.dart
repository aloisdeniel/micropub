import 'package:equatable/equatable.dart';
import 'package:website/theme/data/colors.dart';

class AppThemeData extends Equatable {
  const AppThemeData({
    required this.color,
  });

  const AppThemeData.fallback() : color = const ColorData.light();

  final ColorData color;

  @override
  List<Object?> get props => [
        color,
      ];
}
