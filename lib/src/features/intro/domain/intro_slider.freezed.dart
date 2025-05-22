// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_slider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroSlider {

 String get slideImage; String get slideHeader; String get slideSub;
/// Create a copy of IntroSlider
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroSliderCopyWith<IntroSlider> get copyWith => _$IntroSliderCopyWithImpl<IntroSlider>(this as IntroSlider, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroSlider&&(identical(other.slideImage, slideImage) || other.slideImage == slideImage)&&(identical(other.slideHeader, slideHeader) || other.slideHeader == slideHeader)&&(identical(other.slideSub, slideSub) || other.slideSub == slideSub));
}


@override
int get hashCode => Object.hash(runtimeType,slideImage,slideHeader,slideSub);

@override
String toString() {
  return 'IntroSlider(slideImage: $slideImage, slideHeader: $slideHeader, slideSub: $slideSub)';
}


}

/// @nodoc
abstract mixin class $IntroSliderCopyWith<$Res>  {
  factory $IntroSliderCopyWith(IntroSlider value, $Res Function(IntroSlider) _then) = _$IntroSliderCopyWithImpl;
@useResult
$Res call({
 String slideImage, String slideHeader, String slideSub
});




}
/// @nodoc
class _$IntroSliderCopyWithImpl<$Res>
    implements $IntroSliderCopyWith<$Res> {
  _$IntroSliderCopyWithImpl(this._self, this._then);

  final IntroSlider _self;
  final $Res Function(IntroSlider) _then;

/// Create a copy of IntroSlider
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slideImage = null,Object? slideHeader = null,Object? slideSub = null,}) {
  return _then(_self.copyWith(
slideImage: null == slideImage ? _self.slideImage : slideImage // ignore: cast_nullable_to_non_nullable
as String,slideHeader: null == slideHeader ? _self.slideHeader : slideHeader // ignore: cast_nullable_to_non_nullable
as String,slideSub: null == slideSub ? _self.slideSub : slideSub // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _IntroSlider implements IntroSlider {
  const _IntroSlider({required this.slideImage, required this.slideHeader, required this.slideSub});
  

@override final  String slideImage;
@override final  String slideHeader;
@override final  String slideSub;

/// Create a copy of IntroSlider
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroSliderCopyWith<_IntroSlider> get copyWith => __$IntroSliderCopyWithImpl<_IntroSlider>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroSlider&&(identical(other.slideImage, slideImage) || other.slideImage == slideImage)&&(identical(other.slideHeader, slideHeader) || other.slideHeader == slideHeader)&&(identical(other.slideSub, slideSub) || other.slideSub == slideSub));
}


@override
int get hashCode => Object.hash(runtimeType,slideImage,slideHeader,slideSub);

@override
String toString() {
  return 'IntroSlider(slideImage: $slideImage, slideHeader: $slideHeader, slideSub: $slideSub)';
}


}

/// @nodoc
abstract mixin class _$IntroSliderCopyWith<$Res> implements $IntroSliderCopyWith<$Res> {
  factory _$IntroSliderCopyWith(_IntroSlider value, $Res Function(_IntroSlider) _then) = __$IntroSliderCopyWithImpl;
@override @useResult
$Res call({
 String slideImage, String slideHeader, String slideSub
});




}
/// @nodoc
class __$IntroSliderCopyWithImpl<$Res>
    implements _$IntroSliderCopyWith<$Res> {
  __$IntroSliderCopyWithImpl(this._self, this._then);

  final _IntroSlider _self;
  final $Res Function(_IntroSlider) _then;

/// Create a copy of IntroSlider
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slideImage = null,Object? slideHeader = null,Object? slideSub = null,}) {
  return _then(_IntroSlider(
slideImage: null == slideImage ? _self.slideImage : slideImage // ignore: cast_nullable_to_non_nullable
as String,slideHeader: null == slideHeader ? _self.slideHeader : slideHeader // ignore: cast_nullable_to_non_nullable
as String,slideSub: null == slideSub ? _self.slideSub : slideSub // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
