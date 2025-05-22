// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Feed {

 String get feedProfile; String get feedLocation; String get feedName; String get feedCoverImage;
/// Create a copy of Feed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedCopyWith<Feed> get copyWith => _$FeedCopyWithImpl<Feed>(this as Feed, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Feed&&(identical(other.feedProfile, feedProfile) || other.feedProfile == feedProfile)&&(identical(other.feedLocation, feedLocation) || other.feedLocation == feedLocation)&&(identical(other.feedName, feedName) || other.feedName == feedName)&&(identical(other.feedCoverImage, feedCoverImage) || other.feedCoverImage == feedCoverImage));
}


@override
int get hashCode => Object.hash(runtimeType,feedProfile,feedLocation,feedName,feedCoverImage);

@override
String toString() {
  return 'Feed(feedProfile: $feedProfile, feedLocation: $feedLocation, feedName: $feedName, feedCoverImage: $feedCoverImage)';
}


}

/// @nodoc
abstract mixin class $FeedCopyWith<$Res>  {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) _then) = _$FeedCopyWithImpl;
@useResult
$Res call({
 String feedProfile, String feedLocation, String feedName, String feedCoverImage
});




}
/// @nodoc
class _$FeedCopyWithImpl<$Res>
    implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._self, this._then);

  final Feed _self;
  final $Res Function(Feed) _then;

/// Create a copy of Feed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feedProfile = null,Object? feedLocation = null,Object? feedName = null,Object? feedCoverImage = null,}) {
  return _then(_self.copyWith(
feedProfile: null == feedProfile ? _self.feedProfile : feedProfile // ignore: cast_nullable_to_non_nullable
as String,feedLocation: null == feedLocation ? _self.feedLocation : feedLocation // ignore: cast_nullable_to_non_nullable
as String,feedName: null == feedName ? _self.feedName : feedName // ignore: cast_nullable_to_non_nullable
as String,feedCoverImage: null == feedCoverImage ? _self.feedCoverImage : feedCoverImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _Feed implements Feed {
  const _Feed({required this.feedProfile, required this.feedLocation, required this.feedName, required this.feedCoverImage});
  

@override final  String feedProfile;
@override final  String feedLocation;
@override final  String feedName;
@override final  String feedCoverImage;

/// Create a copy of Feed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedCopyWith<_Feed> get copyWith => __$FeedCopyWithImpl<_Feed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Feed&&(identical(other.feedProfile, feedProfile) || other.feedProfile == feedProfile)&&(identical(other.feedLocation, feedLocation) || other.feedLocation == feedLocation)&&(identical(other.feedName, feedName) || other.feedName == feedName)&&(identical(other.feedCoverImage, feedCoverImage) || other.feedCoverImage == feedCoverImage));
}


@override
int get hashCode => Object.hash(runtimeType,feedProfile,feedLocation,feedName,feedCoverImage);

@override
String toString() {
  return 'Feed(feedProfile: $feedProfile, feedLocation: $feedLocation, feedName: $feedName, feedCoverImage: $feedCoverImage)';
}


}

/// @nodoc
abstract mixin class _$FeedCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$FeedCopyWith(_Feed value, $Res Function(_Feed) _then) = __$FeedCopyWithImpl;
@override @useResult
$Res call({
 String feedProfile, String feedLocation, String feedName, String feedCoverImage
});




}
/// @nodoc
class __$FeedCopyWithImpl<$Res>
    implements _$FeedCopyWith<$Res> {
  __$FeedCopyWithImpl(this._self, this._then);

  final _Feed _self;
  final $Res Function(_Feed) _then;

/// Create a copy of Feed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feedProfile = null,Object? feedLocation = null,Object? feedName = null,Object? feedCoverImage = null,}) {
  return _then(_Feed(
feedProfile: null == feedProfile ? _self.feedProfile : feedProfile // ignore: cast_nullable_to_non_nullable
as String,feedLocation: null == feedLocation ? _self.feedLocation : feedLocation // ignore: cast_nullable_to_non_nullable
as String,feedName: null == feedName ? _self.feedName : feedName // ignore: cast_nullable_to_non_nullable
as String,feedCoverImage: null == feedCoverImage ? _self.feedCoverImage : feedCoverImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
