// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Channel {

 String get chanImage; String get chanTxt;
/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelCopyWith<Channel> get copyWith => _$ChannelCopyWithImpl<Channel>(this as Channel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Channel&&(identical(other.chanImage, chanImage) || other.chanImage == chanImage)&&(identical(other.chanTxt, chanTxt) || other.chanTxt == chanTxt));
}


@override
int get hashCode => Object.hash(runtimeType,chanImage,chanTxt);

@override
String toString() {
  return 'Channel(chanImage: $chanImage, chanTxt: $chanTxt)';
}


}

/// @nodoc
abstract mixin class $ChannelCopyWith<$Res>  {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) _then) = _$ChannelCopyWithImpl;
@useResult
$Res call({
 String chanImage, String chanTxt
});




}
/// @nodoc
class _$ChannelCopyWithImpl<$Res>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._self, this._then);

  final Channel _self;
  final $Res Function(Channel) _then;

/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chanImage = null,Object? chanTxt = null,}) {
  return _then(_self.copyWith(
chanImage: null == chanImage ? _self.chanImage : chanImage // ignore: cast_nullable_to_non_nullable
as String,chanTxt: null == chanTxt ? _self.chanTxt : chanTxt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _Channel implements Channel {
  const _Channel({required this.chanImage, required this.chanTxt});
  

@override final  String chanImage;
@override final  String chanTxt;

/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelCopyWith<_Channel> get copyWith => __$ChannelCopyWithImpl<_Channel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Channel&&(identical(other.chanImage, chanImage) || other.chanImage == chanImage)&&(identical(other.chanTxt, chanTxt) || other.chanTxt == chanTxt));
}


@override
int get hashCode => Object.hash(runtimeType,chanImage,chanTxt);

@override
String toString() {
  return 'Channel(chanImage: $chanImage, chanTxt: $chanTxt)';
}


}

/// @nodoc
abstract mixin class _$ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) _then) = __$ChannelCopyWithImpl;
@override @useResult
$Res call({
 String chanImage, String chanTxt
});




}
/// @nodoc
class __$ChannelCopyWithImpl<$Res>
    implements _$ChannelCopyWith<$Res> {
  __$ChannelCopyWithImpl(this._self, this._then);

  final _Channel _self;
  final $Res Function(_Channel) _then;

/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chanImage = null,Object? chanTxt = null,}) {
  return _then(_Channel(
chanImage: null == chanImage ? _self.chanImage : chanImage // ignore: cast_nullable_to_non_nullable
as String,chanTxt: null == chanTxt ? _self.chanTxt : chanTxt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
