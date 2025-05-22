import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drawers.freezed.dart';

@freezed
abstract class Drawers with _$Drawers {
  const factory Drawers({required IconData drawIcon, required String drawTxt}) =
      _Drawers;
}
