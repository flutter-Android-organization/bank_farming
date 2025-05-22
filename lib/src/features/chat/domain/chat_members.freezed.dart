// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_members.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatMembers {

 String get memberImage; String get memberName; String get memberQuote; String get time;
/// Create a copy of ChatMembers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMembersCopyWith<ChatMembers> get copyWith => _$ChatMembersCopyWithImpl<ChatMembers>(this as ChatMembers, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMembers&&(identical(other.memberImage, memberImage) || other.memberImage == memberImage)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.memberQuote, memberQuote) || other.memberQuote == memberQuote)&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,memberImage,memberName,memberQuote,time);

@override
String toString() {
  return 'ChatMembers(memberImage: $memberImage, memberName: $memberName, memberQuote: $memberQuote, time: $time)';
}


}

/// @nodoc
abstract mixin class $ChatMembersCopyWith<$Res>  {
  factory $ChatMembersCopyWith(ChatMembers value, $Res Function(ChatMembers) _then) = _$ChatMembersCopyWithImpl;
@useResult
$Res call({
 String memberImage, String memberName, String memberQuote, String time
});




}
/// @nodoc
class _$ChatMembersCopyWithImpl<$Res>
    implements $ChatMembersCopyWith<$Res> {
  _$ChatMembersCopyWithImpl(this._self, this._then);

  final ChatMembers _self;
  final $Res Function(ChatMembers) _then;

/// Create a copy of ChatMembers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memberImage = null,Object? memberName = null,Object? memberQuote = null,Object? time = null,}) {
  return _then(_self.copyWith(
memberImage: null == memberImage ? _self.memberImage : memberImage // ignore: cast_nullable_to_non_nullable
as String,memberName: null == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String,memberQuote: null == memberQuote ? _self.memberQuote : memberQuote // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _ChatMembers implements ChatMembers {
  const _ChatMembers({required this.memberImage, required this.memberName, required this.memberQuote, required this.time});
  

@override final  String memberImage;
@override final  String memberName;
@override final  String memberQuote;
@override final  String time;

/// Create a copy of ChatMembers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMembersCopyWith<_ChatMembers> get copyWith => __$ChatMembersCopyWithImpl<_ChatMembers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMembers&&(identical(other.memberImage, memberImage) || other.memberImage == memberImage)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.memberQuote, memberQuote) || other.memberQuote == memberQuote)&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,memberImage,memberName,memberQuote,time);

@override
String toString() {
  return 'ChatMembers(memberImage: $memberImage, memberName: $memberName, memberQuote: $memberQuote, time: $time)';
}


}

/// @nodoc
abstract mixin class _$ChatMembersCopyWith<$Res> implements $ChatMembersCopyWith<$Res> {
  factory _$ChatMembersCopyWith(_ChatMembers value, $Res Function(_ChatMembers) _then) = __$ChatMembersCopyWithImpl;
@override @useResult
$Res call({
 String memberImage, String memberName, String memberQuote, String time
});




}
/// @nodoc
class __$ChatMembersCopyWithImpl<$Res>
    implements _$ChatMembersCopyWith<$Res> {
  __$ChatMembersCopyWithImpl(this._self, this._then);

  final _ChatMembers _self;
  final $Res Function(_ChatMembers) _then;

/// Create a copy of ChatMembers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memberImage = null,Object? memberName = null,Object? memberQuote = null,Object? time = null,}) {
  return _then(_ChatMembers(
memberImage: null == memberImage ? _self.memberImage : memberImage // ignore: cast_nullable_to_non_nullable
as String,memberName: null == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String,memberQuote: null == memberQuote ? _self.memberQuote : memberQuote // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
