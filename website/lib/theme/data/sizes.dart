import 'package:equatable/equatable.dart';

class SizesData extends Equatable {
  const SizesData({
    required this.maxWidth,
  });

  const SizesData.regular() : maxWidth = 800;

  final double maxWidth;

  @override
  List<Object?> get props => [
        maxWidth,
      ];
}
