import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class RadiusData extends Equatable {
  const RadiusData({
    required this.regular,
  });

  const RadiusData.regular() : regular = const Radius.circular(4);

  final Radius regular;

  @override
  List<Object?> get props => [
        regular,
      ];
}
