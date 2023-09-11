// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Movie> initialNoteOption) initialized,
    required TResult Function(String bodystr) moviesChanged,
    required TResult Function(String bodystr1) categoryChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Movie> initialNoteOption)? initialized,
    TResult? Function(String bodystr)? moviesChanged,
    TResult? Function(String bodystr1)? categoryChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Movie> initialNoteOption)? initialized,
    TResult Function(String bodystr)? moviesChanged,
    TResult Function(String bodystr1)? categoryChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MoviesChanged value) moviesChanged,
    required TResult Function(_CategoriesChanged value) categoryChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MoviesChanged value)? moviesChanged,
    TResult? Function(_CategoriesChanged value)? categoryChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MoviesChanged value)? moviesChanged,
    TResult Function(_CategoriesChanged value)? categoryChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieFormEventCopyWith<$Res> {
  factory $MovieFormEventCopyWith(
          MovieFormEvent value, $Res Function(MovieFormEvent) then) =
      _$MovieFormEventCopyWithImpl<$Res, MovieFormEvent>;
}

/// @nodoc
class _$MovieFormEventCopyWithImpl<$Res, $Val extends MovieFormEvent>
    implements $MovieFormEventCopyWith<$Res> {
  _$MovieFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Movie> initialNoteOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$MovieFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialNoteOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialNoteOption
          ? _value.initialNoteOption
          : initialNoteOption // ignore: cast_nullable_to_non_nullable
              as Option<Movie>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialNoteOption);

  @override
  final Option<Movie> initialNoteOption;

  @override
  String toString() {
    return 'MovieFormEvent.initialized(initialNoteOption: $initialNoteOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialNoteOption, initialNoteOption) ||
                other.initialNoteOption == initialNoteOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialNoteOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Movie> initialNoteOption) initialized,
    required TResult Function(String bodystr) moviesChanged,
    required TResult Function(String bodystr1) categoryChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Movie> initialNoteOption)? initialized,
    TResult? Function(String bodystr)? moviesChanged,
    TResult? Function(String bodystr1)? categoryChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Movie> initialNoteOption)? initialized,
    TResult Function(String bodystr)? moviesChanged,
    TResult Function(String bodystr1)? categoryChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialNoteOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MoviesChanged value) moviesChanged,
    required TResult Function(_CategoriesChanged value) categoryChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MoviesChanged value)? moviesChanged,
    TResult? Function(_CategoriesChanged value)? categoryChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MoviesChanged value)? moviesChanged,
    TResult Function(_CategoriesChanged value)? categoryChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements MovieFormEvent {
  const factory _Initialized(final Option<Movie> initialNoteOption) =
      _$_Initialized;

  Option<Movie> get initialNoteOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MoviesChangedCopyWith<$Res> {
  factory _$$_MoviesChangedCopyWith(
          _$_MoviesChanged value, $Res Function(_$_MoviesChanged) then) =
      __$$_MoviesChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String bodystr});
}

/// @nodoc
class __$$_MoviesChangedCopyWithImpl<$Res>
    extends _$MovieFormEventCopyWithImpl<$Res, _$_MoviesChanged>
    implements _$$_MoviesChangedCopyWith<$Res> {
  __$$_MoviesChangedCopyWithImpl(
      _$_MoviesChanged _value, $Res Function(_$_MoviesChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodystr = null,
  }) {
    return _then(_$_MoviesChanged(
      null == bodystr
          ? _value.bodystr
          : bodystr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MoviesChanged implements _MoviesChanged {
  const _$_MoviesChanged(this.bodystr);

  @override
  final String bodystr;

  @override
  String toString() {
    return 'MovieFormEvent.moviesChanged(bodystr: $bodystr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoviesChanged &&
            (identical(other.bodystr, bodystr) || other.bodystr == bodystr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bodystr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoviesChangedCopyWith<_$_MoviesChanged> get copyWith =>
      __$$_MoviesChangedCopyWithImpl<_$_MoviesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Movie> initialNoteOption) initialized,
    required TResult Function(String bodystr) moviesChanged,
    required TResult Function(String bodystr1) categoryChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) {
    return moviesChanged(bodystr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Movie> initialNoteOption)? initialized,
    TResult? Function(String bodystr)? moviesChanged,
    TResult? Function(String bodystr1)? categoryChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) {
    return moviesChanged?.call(bodystr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Movie> initialNoteOption)? initialized,
    TResult Function(String bodystr)? moviesChanged,
    TResult Function(String bodystr1)? categoryChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (moviesChanged != null) {
      return moviesChanged(bodystr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MoviesChanged value) moviesChanged,
    required TResult Function(_CategoriesChanged value) categoryChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return moviesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MoviesChanged value)? moviesChanged,
    TResult? Function(_CategoriesChanged value)? categoryChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return moviesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MoviesChanged value)? moviesChanged,
    TResult Function(_CategoriesChanged value)? categoryChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (moviesChanged != null) {
      return moviesChanged(this);
    }
    return orElse();
  }
}

abstract class _MoviesChanged implements MovieFormEvent {
  const factory _MoviesChanged(final String bodystr) = _$_MoviesChanged;

  String get bodystr;
  @JsonKey(ignore: true)
  _$$_MoviesChangedCopyWith<_$_MoviesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoriesChangedCopyWith<$Res> {
  factory _$$_CategoriesChangedCopyWith(_$_CategoriesChanged value,
          $Res Function(_$_CategoriesChanged) then) =
      __$$_CategoriesChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String bodystr1});
}

/// @nodoc
class __$$_CategoriesChangedCopyWithImpl<$Res>
    extends _$MovieFormEventCopyWithImpl<$Res, _$_CategoriesChanged>
    implements _$$_CategoriesChangedCopyWith<$Res> {
  __$$_CategoriesChangedCopyWithImpl(
      _$_CategoriesChanged _value, $Res Function(_$_CategoriesChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodystr1 = null,
  }) {
    return _then(_$_CategoriesChanged(
      null == bodystr1
          ? _value.bodystr1
          : bodystr1 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoriesChanged implements _CategoriesChanged {
  const _$_CategoriesChanged(this.bodystr1);

  @override
  final String bodystr1;

  @override
  String toString() {
    return 'MovieFormEvent.categoryChanged(bodystr1: $bodystr1)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesChanged &&
            (identical(other.bodystr1, bodystr1) ||
                other.bodystr1 == bodystr1));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bodystr1);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesChangedCopyWith<_$_CategoriesChanged> get copyWith =>
      __$$_CategoriesChangedCopyWithImpl<_$_CategoriesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Movie> initialNoteOption) initialized,
    required TResult Function(String bodystr) moviesChanged,
    required TResult Function(String bodystr1) categoryChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) {
    return categoryChanged(bodystr1);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Movie> initialNoteOption)? initialized,
    TResult? Function(String bodystr)? moviesChanged,
    TResult? Function(String bodystr1)? categoryChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) {
    return categoryChanged?.call(bodystr1);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Movie> initialNoteOption)? initialized,
    TResult Function(String bodystr)? moviesChanged,
    TResult Function(String bodystr1)? categoryChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(bodystr1);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MoviesChanged value) moviesChanged,
    required TResult Function(_CategoriesChanged value) categoryChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MoviesChanged value)? moviesChanged,
    TResult? Function(_CategoriesChanged value)? categoryChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MoviesChanged value)? moviesChanged,
    TResult Function(_CategoriesChanged value)? categoryChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoriesChanged implements MovieFormEvent {
  const factory _CategoriesChanged(final String bodystr1) =
      _$_CategoriesChanged;

  String get bodystr1;
  @JsonKey(ignore: true)
  _$$_CategoriesChangedCopyWith<_$_CategoriesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ColorChangedCopyWith<$Res> {
  factory _$$_ColorChangedCopyWith(
          _$_ColorChanged value, $Res Function(_$_ColorChanged) then) =
      __$$_ColorChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$_ColorChangedCopyWithImpl<$Res>
    extends _$MovieFormEventCopyWithImpl<$Res, _$_ColorChanged>
    implements _$$_ColorChangedCopyWith<$Res> {
  __$$_ColorChangedCopyWithImpl(
      _$_ColorChanged _value, $Res Function(_$_ColorChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$_ColorChanged(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'MovieFormEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorChanged &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      __$$_ColorChangedCopyWithImpl<_$_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Movie> initialNoteOption) initialized,
    required TResult Function(String bodystr) moviesChanged,
    required TResult Function(String bodystr1) categoryChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Movie> initialNoteOption)? initialized,
    TResult? Function(String bodystr)? moviesChanged,
    TResult? Function(String bodystr1)? categoryChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) {
    return colorChanged?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Movie> initialNoteOption)? initialized,
    TResult Function(String bodystr)? moviesChanged,
    TResult Function(String bodystr1)? categoryChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MoviesChanged value) moviesChanged,
    required TResult Function(_CategoriesChanged value) categoryChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MoviesChanged value)? moviesChanged,
    TResult? Function(_CategoriesChanged value)? categoryChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MoviesChanged value)? moviesChanged,
    TResult Function(_CategoriesChanged value)? categoryChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements MovieFormEvent {
  const factory _ColorChanged(final Color color) = _$_ColorChanged;

  Color get color;
  @JsonKey(ignore: true)
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$MovieFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'MovieFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Movie> initialNoteOption) initialized,
    required TResult Function(String bodystr) moviesChanged,
    required TResult Function(String bodystr1) categoryChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Movie> initialNoteOption)? initialized,
    TResult? Function(String bodystr)? moviesChanged,
    TResult? Function(String bodystr1)? categoryChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Movie> initialNoteOption)? initialized,
    TResult Function(String bodystr)? moviesChanged,
    TResult Function(String bodystr1)? categoryChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MoviesChanged value) moviesChanged,
    required TResult Function(_CategoriesChanged value) categoryChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MoviesChanged value)? moviesChanged,
    TResult? Function(_CategoriesChanged value)? categoryChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MoviesChanged value)? moviesChanged,
    TResult Function(_CategoriesChanged value)? categoryChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements MovieFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$MovieFormState {
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  Movie get mlist => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<dynamic> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieFormStateCopyWith<MovieFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieFormStateCopyWith<$Res> {
  factory $MovieFormStateCopyWith(
          MovieFormState value, $Res Function(MovieFormState) then) =
      _$MovieFormStateCopyWithImpl<$Res, MovieFormState>;
  @useResult
  $Res call(
      {bool? showErrorMessages,
      Movie mlist,
      bool isEditing,
      bool isSaving,
      Option<dynamic> saveFailureOrSuccessOption});

  $MovieCopyWith<$Res> get mlist;
}

/// @nodoc
class _$MovieFormStateCopyWithImpl<$Res, $Val extends MovieFormState>
    implements $MovieFormStateCopyWith<$Res> {
  _$MovieFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? mlist = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: freezed == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      mlist: null == mlist
          ? _value.mlist
          : mlist // ignore: cast_nullable_to_non_nullable
              as Movie,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get mlist {
    return $MovieCopyWith<$Res>(_value.mlist, (value) {
      return _then(_value.copyWith(mlist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieFormStateCopyWith<$Res>
    implements $MovieFormStateCopyWith<$Res> {
  factory _$$_MovieFormStateCopyWith(
          _$_MovieFormState value, $Res Function(_$_MovieFormState) then) =
      __$$_MovieFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? showErrorMessages,
      Movie mlist,
      bool isEditing,
      bool isSaving,
      Option<dynamic> saveFailureOrSuccessOption});

  @override
  $MovieCopyWith<$Res> get mlist;
}

/// @nodoc
class __$$_MovieFormStateCopyWithImpl<$Res>
    extends _$MovieFormStateCopyWithImpl<$Res, _$_MovieFormState>
    implements _$$_MovieFormStateCopyWith<$Res> {
  __$$_MovieFormStateCopyWithImpl(
      _$_MovieFormState _value, $Res Function(_$_MovieFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? mlist = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_MovieFormState(
      showErrorMessages: freezed == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      mlist: null == mlist
          ? _value.mlist
          : mlist // ignore: cast_nullable_to_non_nullable
              as Movie,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<dynamic>,
    ));
  }
}

/// @nodoc

class _$_MovieFormState implements _MovieFormState {
  const _$_MovieFormState(
      {required this.showErrorMessages,
      required this.mlist,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final bool? showErrorMessages;
  @override
  final Movie mlist;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<dynamic> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'MovieFormState(showErrorMessages: $showErrorMessages, mlist: $mlist, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieFormState &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.mlist, mlist) || other.mlist == mlist) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showErrorMessages, mlist,
      isEditing, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieFormStateCopyWith<_$_MovieFormState> get copyWith =>
      __$$_MovieFormStateCopyWithImpl<_$_MovieFormState>(this, _$identity);
}

abstract class _MovieFormState implements MovieFormState {
  const factory _MovieFormState(
          {required final bool? showErrorMessages,
          required final Movie mlist,
          required final bool isEditing,
          required final bool isSaving,
          required final Option<dynamic> saveFailureOrSuccessOption}) =
      _$_MovieFormState;

  @override
  bool? get showErrorMessages;
  @override
  Movie get mlist;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<dynamic> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_MovieFormStateCopyWith<_$_MovieFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
