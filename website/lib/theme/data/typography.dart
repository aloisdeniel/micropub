import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class TypographyData extends Equatable {
  const TypographyData({
    required this.title1,
    required this.title2,
    required this.title3,
    required this.paragraph1,
    required this.paragraph2,
    required this.paragraph3,
    required this.paragraph4,
  });

  const TypographyData.regular()
      : title1 = const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 64,
        ),
        title2 = const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 36,
        ),
        title3 = const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
        ),
        paragraph1 = const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 18,
        ),
        paragraph2 = const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
        ),
        paragraph3 = const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 12,
        ),
        paragraph4 = const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 8,
        );

  final TextStyle title1;
  final TextStyle title2;
  final TextStyle title3;
  final TextStyle paragraph1;
  final TextStyle paragraph2;
  final TextStyle paragraph3;
  final TextStyle paragraph4;

  @override
  List<Object?> get props => [
        title1,
        title2,
        title3,
        paragraph1,
        paragraph2,
        paragraph3,
        paragraph4,
      ];
}
