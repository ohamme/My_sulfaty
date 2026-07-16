// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salafiya_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalafiyaModel {

 String get id; String get name; String get adminName; String get adminPhone; double get monthlyAmount; double get totalAmount; DateTime get startDate; String get inviteCode; String get themeColor; String? get icon; SalafiyaStatus get status; String? get notes; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of SalafiyaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalafiyaModelCopyWith<SalafiyaModel> get copyWith => _$SalafiyaModelCopyWithImpl<SalafiyaModel>(this as SalafiyaModel, _$identity);

  /// Serializes this SalafiyaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalafiyaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.adminName, adminName) || other.adminName == adminName)&&(identical(other.adminPhone, adminPhone) || other.adminPhone == adminPhone)&&(identical(other.monthlyAmount, monthlyAmount) || other.monthlyAmount == monthlyAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.inviteCode, inviteCode) || other.inviteCode == inviteCode)&&(identical(other.themeColor, themeColor) || other.themeColor == themeColor)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,adminName,adminPhone,monthlyAmount,totalAmount,startDate,inviteCode,themeColor,icon,status,notes,createdAt,updatedAt);

@override
String toString() {
  return 'SalafiyaModel(id: $id, name: $name, adminName: $adminName, adminPhone: $adminPhone, monthlyAmount: $monthlyAmount, totalAmount: $totalAmount, startDate: $startDate, inviteCode: $inviteCode, themeColor: $themeColor, icon: $icon, status: $status, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SalafiyaModelCopyWith<$Res>  {
  factory $SalafiyaModelCopyWith(SalafiyaModel value, $Res Function(SalafiyaModel) _then) = _$SalafiyaModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String adminName, String adminPhone, double monthlyAmount, double totalAmount, DateTime startDate, String inviteCode, String themeColor, String? icon, SalafiyaStatus status, String? notes, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$SalafiyaModelCopyWithImpl<$Res>
    implements $SalafiyaModelCopyWith<$Res> {
  _$SalafiyaModelCopyWithImpl(this._self, this._then);

  final SalafiyaModel _self;
  final $Res Function(SalafiyaModel) _then;

/// Create a copy of SalafiyaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? adminName = null,Object? adminPhone = null,Object? monthlyAmount = null,Object? totalAmount = null,Object? startDate = null,Object? inviteCode = null,Object? themeColor = null,Object? icon = freezed,Object? status = null,Object? notes = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,adminName: null == adminName ? _self.adminName : adminName // ignore: cast_nullable_to_non_nullable
as String,adminPhone: null == adminPhone ? _self.adminPhone : adminPhone // ignore: cast_nullable_to_non_nullable
as String,monthlyAmount: null == monthlyAmount ? _self.monthlyAmount : monthlyAmount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,inviteCode: null == inviteCode ? _self.inviteCode : inviteCode // ignore: cast_nullable_to_non_nullable
as String,themeColor: null == themeColor ? _self.themeColor : themeColor // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SalafiyaStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SalafiyaModel].
extension SalafiyaModelPatterns on SalafiyaModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalafiyaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalafiyaModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalafiyaModel value)  $default,){
final _that = this;
switch (_that) {
case _SalafiyaModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalafiyaModel value)?  $default,){
final _that = this;
switch (_that) {
case _SalafiyaModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String adminName,  String adminPhone,  double monthlyAmount,  double totalAmount,  DateTime startDate,  String inviteCode,  String themeColor,  String? icon,  SalafiyaStatus status,  String? notes,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalafiyaModel() when $default != null:
return $default(_that.id,_that.name,_that.adminName,_that.adminPhone,_that.monthlyAmount,_that.totalAmount,_that.startDate,_that.inviteCode,_that.themeColor,_that.icon,_that.status,_that.notes,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String adminName,  String adminPhone,  double monthlyAmount,  double totalAmount,  DateTime startDate,  String inviteCode,  String themeColor,  String? icon,  SalafiyaStatus status,  String? notes,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _SalafiyaModel():
return $default(_that.id,_that.name,_that.adminName,_that.adminPhone,_that.monthlyAmount,_that.totalAmount,_that.startDate,_that.inviteCode,_that.themeColor,_that.icon,_that.status,_that.notes,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String adminName,  String adminPhone,  double monthlyAmount,  double totalAmount,  DateTime startDate,  String inviteCode,  String themeColor,  String? icon,  SalafiyaStatus status,  String? notes,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _SalafiyaModel() when $default != null:
return $default(_that.id,_that.name,_that.adminName,_that.adminPhone,_that.monthlyAmount,_that.totalAmount,_that.startDate,_that.inviteCode,_that.themeColor,_that.icon,_that.status,_that.notes,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalafiyaModel implements SalafiyaModel {
  const _SalafiyaModel({required this.id, required this.name, required this.adminName, required this.adminPhone, required this.monthlyAmount, required this.totalAmount, required this.startDate, required this.inviteCode, required this.themeColor, this.icon, this.status = SalafiyaStatus.active, this.notes, required this.createdAt, required this.updatedAt});
  factory _SalafiyaModel.fromJson(Map<String, dynamic> json) => _$SalafiyaModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String adminName;
@override final  String adminPhone;
@override final  double monthlyAmount;
@override final  double totalAmount;
@override final  DateTime startDate;
@override final  String inviteCode;
@override final  String themeColor;
@override final  String? icon;
@override@JsonKey() final  SalafiyaStatus status;
@override final  String? notes;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of SalafiyaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalafiyaModelCopyWith<_SalafiyaModel> get copyWith => __$SalafiyaModelCopyWithImpl<_SalafiyaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalafiyaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalafiyaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.adminName, adminName) || other.adminName == adminName)&&(identical(other.adminPhone, adminPhone) || other.adminPhone == adminPhone)&&(identical(other.monthlyAmount, monthlyAmount) || other.monthlyAmount == monthlyAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.inviteCode, inviteCode) || other.inviteCode == inviteCode)&&(identical(other.themeColor, themeColor) || other.themeColor == themeColor)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,adminName,adminPhone,monthlyAmount,totalAmount,startDate,inviteCode,themeColor,icon,status,notes,createdAt,updatedAt);

@override
String toString() {
  return 'SalafiyaModel(id: $id, name: $name, adminName: $adminName, adminPhone: $adminPhone, monthlyAmount: $monthlyAmount, totalAmount: $totalAmount, startDate: $startDate, inviteCode: $inviteCode, themeColor: $themeColor, icon: $icon, status: $status, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SalafiyaModelCopyWith<$Res> implements $SalafiyaModelCopyWith<$Res> {
  factory _$SalafiyaModelCopyWith(_SalafiyaModel value, $Res Function(_SalafiyaModel) _then) = __$SalafiyaModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String adminName, String adminPhone, double monthlyAmount, double totalAmount, DateTime startDate, String inviteCode, String themeColor, String? icon, SalafiyaStatus status, String? notes, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$SalafiyaModelCopyWithImpl<$Res>
    implements _$SalafiyaModelCopyWith<$Res> {
  __$SalafiyaModelCopyWithImpl(this._self, this._then);

  final _SalafiyaModel _self;
  final $Res Function(_SalafiyaModel) _then;

/// Create a copy of SalafiyaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? adminName = null,Object? adminPhone = null,Object? monthlyAmount = null,Object? totalAmount = null,Object? startDate = null,Object? inviteCode = null,Object? themeColor = null,Object? icon = freezed,Object? status = null,Object? notes = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_SalafiyaModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,adminName: null == adminName ? _self.adminName : adminName // ignore: cast_nullable_to_non_nullable
as String,adminPhone: null == adminPhone ? _self.adminPhone : adminPhone // ignore: cast_nullable_to_non_nullable
as String,monthlyAmount: null == monthlyAmount ? _self.monthlyAmount : monthlyAmount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,inviteCode: null == inviteCode ? _self.inviteCode : inviteCode // ignore: cast_nullable_to_non_nullable
as String,themeColor: null == themeColor ? _self.themeColor : themeColor // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SalafiyaStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
