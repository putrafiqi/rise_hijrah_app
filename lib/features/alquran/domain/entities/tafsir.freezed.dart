// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tafsir.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tafsir _$TafsirFromJson(Map<String, dynamic> json) {
  return _Tafsir.fromJson(json);
}

/// @nodoc
mixin _$Tafsir {
  int get ayat => throw _privateConstructorUsedError;
  String get teks => throw _privateConstructorUsedError;

  /// Serializes this Tafsir to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tafsir
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TafsirCopyWith<Tafsir> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TafsirCopyWith<$Res> {
  factory $TafsirCopyWith(Tafsir value, $Res Function(Tafsir) then) =
      _$TafsirCopyWithImpl<$Res, Tafsir>;
  @useResult
  $Res call({int ayat, String teks});
}

/// @nodoc
class _$TafsirCopyWithImpl<$Res, $Val extends Tafsir>
    implements $TafsirCopyWith<$Res> {
  _$TafsirCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tafsir
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
abstract class _$$TafsirImplCopyWith<$Res> implements $TafsirCopyWith<$Res> {
  factory _$$TafsirImplCopyWith(
          _$TafsirImpl value, $Res Function(_$TafsirImpl) then) =
      __$$TafsirImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ayat, String teks});
}

/// @nodoc
class __$$TafsirImplCopyWithImpl<$Res>
    extends _$TafsirCopyWithImpl<$Res, _$TafsirImpl>
    implements _$$TafsirImplCopyWith<$Res> {
  __$$TafsirImplCopyWithImpl(
      _$TafsirImpl _value, $Res Function(_$TafsirImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tafsir
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayat = null,
    Object? teks = null,
  }) {
    return _then(_$TafsirImpl(
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
class _$TafsirImpl with DiagnosticableTreeMixin implements _Tafsir {
  const _$TafsirImpl({required this.ayat, required this.teks});

  factory _$TafsirImpl.fromJson(Map<String, dynamic> json) =>
      _$$TafsirImplFromJson(json);

  @override
  final int ayat;
  @override
  final String teks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tafsir(ayat: $ayat, teks: $teks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tafsir'))
      ..add(DiagnosticsProperty('ayat', ayat))
      ..add(DiagnosticsProperty('teks', teks));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TafsirImpl &&
            (identical(other.ayat, ayat) || other.ayat == ayat) &&
            (identical(other.teks, teks) || other.teks == teks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ayat, teks);

  /// Create a copy of Tafsir
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TafsirImplCopyWith<_$TafsirImpl> get copyWith =>
      __$$TafsirImplCopyWithImpl<_$TafsirImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TafsirImplToJson(
      this,
    );
  }
}

abstract class _Tafsir implements Tafsir {
  const factory _Tafsir({required final int ayat, required final String teks}) =
      _$TafsirImpl;

  factory _Tafsir.fromJson(Map<String, dynamic> json) = _$TafsirImpl.fromJson;

  @override
  int get ayat;
  @override
  String get teks;

  /// Create a copy of Tafsir
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TafsirImplCopyWith<_$TafsirImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
