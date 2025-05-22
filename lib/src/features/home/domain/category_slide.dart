import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_slide.freezed.dart';

@freezed
abstract class CategorySlide with _$CategorySlide {
  const factory CategorySlide({
    required String categoryImage,
    required String categoryHeader,
    required String categorySub,
    required String categoryType,
  }) = _CategorySlide;
}
