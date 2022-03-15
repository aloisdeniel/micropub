import 'package:equatable/equatable.dart';

class SpacingData extends Equatable {
  const SpacingData({
    required this.small,
    required this.regular,
    required this.big,
    required this.extraBig,
  });

  const SpacingData.regular()
      : small = 10,
        regular = 20,
        big = 30,
        extraBig = 64;

  final double small;
  final double regular;
  final double big;
  final double extraBig;

  @override
  List<Object?> get props => [
        small,
        regular,
        big,
        extraBig,
      ];
}
