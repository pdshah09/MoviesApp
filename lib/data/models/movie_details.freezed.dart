// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDetails {

@JsonKey(name: 'adult') bool get adult;@JsonKey(name: 'backdrop_path') String get backdropPath;@JsonKey(name: 'budget') int get budget;@JsonKey(name: 'genres') List<Genre> get genres;@JsonKey(name: 'homepage') String get homepage;@JsonKey(name: 'id') int get id;@JsonKey(name: 'imdb_id') String get imdbId;@JsonKey(name: 'origin_country') List<String> get originCountry;@JsonKey(name: 'original_language') String get originalLanguage;@JsonKey(name: 'original_title') String get originalTitle;@JsonKey(name: 'overview') String get overview;@JsonKey(name: 'popularity') double get popularity;@JsonKey(name: 'poster_path') String get posterPath;@JsonKey(name: 'release_date') DateTime get releaseDate;@JsonKey(name: 'revenue') int get revenue;@JsonKey(name: 'runtime') int get runtime;@JsonKey(name: 'status') String get status;@JsonKey(name: 'tagline') String get tagline;@JsonKey(name: 'title') String get title;@JsonKey(name: 'video') bool get video;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'vote_count') int get voteCount;
/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsCopyWith<MovieDetails> get copyWith => _$MovieDetailsCopyWithImpl<MovieDetails>(this as MovieDetails, _$identity);

  /// Serializes this MovieDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetails&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.budget, budget) || other.budget == budget)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.id, id) || other.id == id)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&const DeepCollectionEquality().equals(other.originCountry, originCountry)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,adult,backdropPath,budget,const DeepCollectionEquality().hash(genres),homepage,id,imdbId,const DeepCollectionEquality().hash(originCountry),originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,revenue,runtime,status,tagline,title,video,voteAverage,voteCount]);

@override
String toString() {
  return 'MovieDetails(adult: $adult, backdropPath: $backdropPath, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originCountry: $originCountry, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsCopyWith<$Res>  {
  factory $MovieDetailsCopyWith(MovieDetails value, $Res Function(MovieDetails) _then) = _$MovieDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'adult') bool adult,@JsonKey(name: 'backdrop_path') String backdropPath,@JsonKey(name: 'budget') int budget,@JsonKey(name: 'genres') List<Genre> genres,@JsonKey(name: 'homepage') String homepage,@JsonKey(name: 'id') int id,@JsonKey(name: 'imdb_id') String imdbId,@JsonKey(name: 'origin_country') List<String> originCountry,@JsonKey(name: 'original_language') String originalLanguage,@JsonKey(name: 'original_title') String originalTitle,@JsonKey(name: 'overview') String overview,@JsonKey(name: 'popularity') double popularity,@JsonKey(name: 'poster_path') String posterPath,@JsonKey(name: 'release_date') DateTime releaseDate,@JsonKey(name: 'revenue') int revenue,@JsonKey(name: 'runtime') int runtime,@JsonKey(name: 'status') String status,@JsonKey(name: 'tagline') String tagline,@JsonKey(name: 'title') String title,@JsonKey(name: 'video') bool video,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount
});




}
/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._self, this._then);

  final MovieDetails _self;
  final $Res Function(MovieDetails) _then;

/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? backdropPath = null,Object? budget = null,Object? genres = null,Object? homepage = null,Object? id = null,Object? imdbId = null,Object? originCountry = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = null,Object? popularity = null,Object? posterPath = null,Object? releaseDate = null,Object? revenue = null,Object? runtime = null,Object? status = null,Object? tagline = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,}) {
  return _then(_self.copyWith(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>,homepage: null == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imdbId: null == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String,originCountry: null == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetails].
extension MovieDetailsPatterns on MovieDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetails value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetails():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetails value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'adult')  bool adult, @JsonKey(name: 'backdrop_path')  String backdropPath, @JsonKey(name: 'budget')  int budget, @JsonKey(name: 'genres')  List<Genre> genres, @JsonKey(name: 'homepage')  String homepage, @JsonKey(name: 'id')  int id, @JsonKey(name: 'imdb_id')  String imdbId, @JsonKey(name: 'origin_country')  List<String> originCountry, @JsonKey(name: 'original_language')  String originalLanguage, @JsonKey(name: 'original_title')  String originalTitle, @JsonKey(name: 'overview')  String overview, @JsonKey(name: 'popularity')  double popularity, @JsonKey(name: 'poster_path')  String posterPath, @JsonKey(name: 'release_date')  DateTime releaseDate, @JsonKey(name: 'revenue')  int revenue, @JsonKey(name: 'runtime')  int runtime, @JsonKey(name: 'status')  String status, @JsonKey(name: 'tagline')  String tagline, @JsonKey(name: 'title')  String title, @JsonKey(name: 'video')  bool video, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetails() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.budget,_that.genres,_that.homepage,_that.id,_that.imdbId,_that.originCountry,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.revenue,_that.runtime,_that.status,_that.tagline,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'adult')  bool adult, @JsonKey(name: 'backdrop_path')  String backdropPath, @JsonKey(name: 'budget')  int budget, @JsonKey(name: 'genres')  List<Genre> genres, @JsonKey(name: 'homepage')  String homepage, @JsonKey(name: 'id')  int id, @JsonKey(name: 'imdb_id')  String imdbId, @JsonKey(name: 'origin_country')  List<String> originCountry, @JsonKey(name: 'original_language')  String originalLanguage, @JsonKey(name: 'original_title')  String originalTitle, @JsonKey(name: 'overview')  String overview, @JsonKey(name: 'popularity')  double popularity, @JsonKey(name: 'poster_path')  String posterPath, @JsonKey(name: 'release_date')  DateTime releaseDate, @JsonKey(name: 'revenue')  int revenue, @JsonKey(name: 'runtime')  int runtime, @JsonKey(name: 'status')  String status, @JsonKey(name: 'tagline')  String tagline, @JsonKey(name: 'title')  String title, @JsonKey(name: 'video')  bool video, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount)  $default,) {final _that = this;
switch (_that) {
case _MovieDetails():
return $default(_that.adult,_that.backdropPath,_that.budget,_that.genres,_that.homepage,_that.id,_that.imdbId,_that.originCountry,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.revenue,_that.runtime,_that.status,_that.tagline,_that.title,_that.video,_that.voteAverage,_that.voteCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'adult')  bool adult, @JsonKey(name: 'backdrop_path')  String backdropPath, @JsonKey(name: 'budget')  int budget, @JsonKey(name: 'genres')  List<Genre> genres, @JsonKey(name: 'homepage')  String homepage, @JsonKey(name: 'id')  int id, @JsonKey(name: 'imdb_id')  String imdbId, @JsonKey(name: 'origin_country')  List<String> originCountry, @JsonKey(name: 'original_language')  String originalLanguage, @JsonKey(name: 'original_title')  String originalTitle, @JsonKey(name: 'overview')  String overview, @JsonKey(name: 'popularity')  double popularity, @JsonKey(name: 'poster_path')  String posterPath, @JsonKey(name: 'release_date')  DateTime releaseDate, @JsonKey(name: 'revenue')  int revenue, @JsonKey(name: 'runtime')  int runtime, @JsonKey(name: 'status')  String status, @JsonKey(name: 'tagline')  String tagline, @JsonKey(name: 'title')  String title, @JsonKey(name: 'video')  bool video, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetails() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.budget,_that.genres,_that.homepage,_that.id,_that.imdbId,_that.originCountry,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.revenue,_that.runtime,_that.status,_that.tagline,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieDetails implements MovieDetails {
  const _MovieDetails({@JsonKey(name: 'adult') required this.adult, @JsonKey(name: 'backdrop_path') required this.backdropPath, @JsonKey(name: 'budget') required this.budget, @JsonKey(name: 'genres') required final  List<Genre> genres, @JsonKey(name: 'homepage') required this.homepage, @JsonKey(name: 'id') required this.id, @JsonKey(name: 'imdb_id') required this.imdbId, @JsonKey(name: 'origin_country') required final  List<String> originCountry, @JsonKey(name: 'original_language') required this.originalLanguage, @JsonKey(name: 'original_title') required this.originalTitle, @JsonKey(name: 'overview') required this.overview, @JsonKey(name: 'popularity') required this.popularity, @JsonKey(name: 'poster_path') required this.posterPath, @JsonKey(name: 'release_date') required this.releaseDate, @JsonKey(name: 'revenue') required this.revenue, @JsonKey(name: 'runtime') required this.runtime, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'tagline') required this.tagline, @JsonKey(name: 'title') required this.title, @JsonKey(name: 'video') required this.video, @JsonKey(name: 'vote_average') required this.voteAverage, @JsonKey(name: 'vote_count') required this.voteCount}): _genres = genres,_originCountry = originCountry;
  factory _MovieDetails.fromJson(Map<String, dynamic> json) => _$MovieDetailsFromJson(json);

@override@JsonKey(name: 'adult') final  bool adult;
@override@JsonKey(name: 'backdrop_path') final  String backdropPath;
@override@JsonKey(name: 'budget') final  int budget;
 final  List<Genre> _genres;
@override@JsonKey(name: 'genres') List<Genre> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override@JsonKey(name: 'homepage') final  String homepage;
@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'imdb_id') final  String imdbId;
 final  List<String> _originCountry;
@override@JsonKey(name: 'origin_country') List<String> get originCountry {
  if (_originCountry is EqualUnmodifiableListView) return _originCountry;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_originCountry);
}

@override@JsonKey(name: 'original_language') final  String originalLanguage;
@override@JsonKey(name: 'original_title') final  String originalTitle;
@override@JsonKey(name: 'overview') final  String overview;
@override@JsonKey(name: 'popularity') final  double popularity;
@override@JsonKey(name: 'poster_path') final  String posterPath;
@override@JsonKey(name: 'release_date') final  DateTime releaseDate;
@override@JsonKey(name: 'revenue') final  int revenue;
@override@JsonKey(name: 'runtime') final  int runtime;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'tagline') final  String tagline;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'video') final  bool video;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'vote_count') final  int voteCount;

/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailsCopyWith<_MovieDetails> get copyWith => __$MovieDetailsCopyWithImpl<_MovieDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetails&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.budget, budget) || other.budget == budget)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.id, id) || other.id == id)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&const DeepCollectionEquality().equals(other._originCountry, _originCountry)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,adult,backdropPath,budget,const DeepCollectionEquality().hash(_genres),homepage,id,imdbId,const DeepCollectionEquality().hash(_originCountry),originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,revenue,runtime,status,tagline,title,video,voteAverage,voteCount]);

@override
String toString() {
  return 'MovieDetails(adult: $adult, backdropPath: $backdropPath, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originCountry: $originCountry, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailsCopyWith<$Res> implements $MovieDetailsCopyWith<$Res> {
  factory _$MovieDetailsCopyWith(_MovieDetails value, $Res Function(_MovieDetails) _then) = __$MovieDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'adult') bool adult,@JsonKey(name: 'backdrop_path') String backdropPath,@JsonKey(name: 'budget') int budget,@JsonKey(name: 'genres') List<Genre> genres,@JsonKey(name: 'homepage') String homepage,@JsonKey(name: 'id') int id,@JsonKey(name: 'imdb_id') String imdbId,@JsonKey(name: 'origin_country') List<String> originCountry,@JsonKey(name: 'original_language') String originalLanguage,@JsonKey(name: 'original_title') String originalTitle,@JsonKey(name: 'overview') String overview,@JsonKey(name: 'popularity') double popularity,@JsonKey(name: 'poster_path') String posterPath,@JsonKey(name: 'release_date') DateTime releaseDate,@JsonKey(name: 'revenue') int revenue,@JsonKey(name: 'runtime') int runtime,@JsonKey(name: 'status') String status,@JsonKey(name: 'tagline') String tagline,@JsonKey(name: 'title') String title,@JsonKey(name: 'video') bool video,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount
});




}
/// @nodoc
class __$MovieDetailsCopyWithImpl<$Res>
    implements _$MovieDetailsCopyWith<$Res> {
  __$MovieDetailsCopyWithImpl(this._self, this._then);

  final _MovieDetails _self;
  final $Res Function(_MovieDetails) _then;

/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? backdropPath = null,Object? budget = null,Object? genres = null,Object? homepage = null,Object? id = null,Object? imdbId = null,Object? originCountry = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = null,Object? popularity = null,Object? posterPath = null,Object? releaseDate = null,Object? revenue = null,Object? runtime = null,Object? status = null,Object? tagline = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,}) {
  return _then(_MovieDetails(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>,homepage: null == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imdbId: null == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String,originCountry: null == originCountry ? _self._originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
