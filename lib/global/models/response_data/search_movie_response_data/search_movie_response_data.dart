import 'package:flutter_movie_app/global/models/movie_model/movie_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_movie_response_data.g.dart';

@JsonSerializable()
class SearchMovieResponseData {
  int? page;
  @JsonKey(name: 'results')
  List<MovieModel>? results;
  @JsonKey(name: 'total_results')
  int? totalResults;
  @JsonKey(name: 'total_pages')
  int? totalPages;

  SearchMovieResponseData(
      {this.page, this.results, this.totalResults, this.totalPages});

  factory SearchMovieResponseData.fromJson(Map<String, dynamic> json) {
    return _$SearchMovieResponseDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchMovieResponseDataToJson(this);
}
