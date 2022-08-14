import 'package:json_annotation/json_annotation.dart';

import 'genre.dart';
import 'production_company.dart';
import 'production_country.dart';
import 'spoken_language.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'belongs_to_collection')
  dynamic belongsToCollection;
  int? budget;
  List<Genre>? genres;
  String? homepage;
  int? id;
  @JsonKey(name: 'imdb_id')
  String? imdbId;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  String? overview;
  double? popularity;
  @JsonKey(name: 'poster_path')
  dynamic posterPath;
  @JsonKey(name: 'production_companies')
  List<ProductionCompany>? productionCompanies;
  @JsonKey(name: 'production_countries')
  List<ProductionCountry>? productionCountries;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  int? revenue;
  int? runtime;
  @JsonKey(name: 'spoken_languages')
  List<SpokenLanguage>? spokenLanguages;
  String? status;
  String? tagline;
  String? title;
  bool? video;
  @JsonKey(name: 'vote_average')
  double? voteAverage;
  @JsonKey(name: 'vote_count')
  int? voteCount;

  MovieModel({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return _$MovieModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
