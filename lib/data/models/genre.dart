import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';
part 'genre.g.dart';

@freezed
sealed class Genre with _$Genre {
  const factory Genre({required int id, required String name}) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@freezed
sealed class Genres with _$Genres {
  const factory Genres({required List<Genre> genres}) = _Genres;

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}
