// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tafsir_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TafsirModel _$TafsirModelFromJson(Map<String, dynamic> json) {
  return _TafsirModel.fromJson(json);
}

/// @nodoc
mixin _$TafsirModel {
  int get ayat => throw _privateConstructorUsedError;
  String get teks => throw _privateConstructorUsedError;

  /// Serializes this TafsirModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TafsirModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TafsirModelCopyWith<TafsirModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TafsirModelCopyWith<$Res> {
  factory $TafsirModelCopyWith(
          TafsirModel value, $Res Function(TafsirModel) then) =
      _$TafsirModelCopyWithImpl<$Res, TafsirModel>;
  @useResult
  $Res call({int ayat, String teks});
}

/// @nodoc
class _$TafsirModelCopyWithImpl<$Res, $Val extends TafsirModel>
    implements $TafsirModelCopyWith<$Res> {
  _$TafsirModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TafsirModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayat = null,
    Object? teks = null,
  }) {
    return _then(_value.copyWith(
      ayat: null == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as int,
      teks: null == teks
          ? _value.teks
          : teks // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TafsirModelImplCopyWith<$Res>
    implements $TafsirModelCopyWith<$Res> {
  factory _$$TafsirModelImplCopyWith(
          _$TafsirModelImpl value, $Res Function(_$TafsirModelImpl) then) =
      __$$TafsirModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ayat, String teks});
}

/// @nodoc
class __$$TafsirModelImplCopyWithImpl<$Res>
    extends _$TafsirModelCopyWithImpl<$Res, _$TafsirModelImpl>
    implements _$$TafsirModelImplCopyWith<$Res> {
  __$$TafsirModelImplCopyWithImpl(
      _$TafsirModelImpl _value, $Res Function(_$TafsirModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TafsirModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayat = null,
    Object? teks = null,
  }) {
    return _then(_$TafsirModelImpl(
      ayat: null == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as int,
      teks: null == teks
          ? _value.teks
          : teks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TafsirModelImpl with DiagnosticableTreeMixin implements _TafsirModel {
  const _$TafsirModelImpl({required this.ayat, required this.teks});

  factory _$TafsirModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TafsirModelImplFromJson(json);

  @override
  final int ayat;
  @override
  final String teks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TafsirModel(ayat: $ayat, teks: $teks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TafsirModel'))
      ..add(DiagnosticsProperty('ayat', ayat))
      ..add(DiagnosticsProperty('teks', teks));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TafsirModelImpl &&
            (identical(other.ayat, ayat) || other.ayat == ayat) &&
            (identical(other.teks, teks) || other.teks == teks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ayat, teks);

  /// Create a copy of TafsirModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TafsirModelImplCopyWith<_$TafsirModelImpl> get copyWith =>
      __$$TafsirModelImplCopyWithImpl<_$TafsirModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TafsirModelImplToJson(
      this,
    );
  }
}

abstract class _TafsirModel implements TafsirModel {
  const factory _TafsirModel(
      {required final int ayat,
      required final String teks}) = _$TafsirModelImpl;

  factory _TafsirModel.fromJson(Map<String, dynamic> json) =
      _$TafsirModelImpl.fromJson;

  @override
  int get ayat;
  @override
  String get teks;

  /// Create a copy of TafsirModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TafsirModelImplCopyWith<_$TafsirModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
