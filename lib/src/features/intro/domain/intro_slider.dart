import 'package:freezed_annotation/freezed_annotation.dart';
part 'intro_slider.freezed.dart';

@freezed
abstract class IntroSlider with _$IntroSlider {
  const factory IntroSlider({
    required String slideImage,
    required String slideHeader,
    required String slideSub,
  }) = _IntroSlider;

//factory IntroSlider.fromJson(Map<String, Object?> json) => _$IntroSliderFromJson(json);
}
