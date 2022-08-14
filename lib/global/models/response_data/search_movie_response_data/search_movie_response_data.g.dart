// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMovieResponseData _$SearchMovieResponseDataFromJson(
        Map<String, dynamic> json) =>
    SearchMovieResponseData(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: json['total_results'] as int?,
      totalPages: json['total_pages'] as int?,
    );

Map<String, dynamic> _$SearchMovieResponseDataToJson(
        SearchMovieResponseData instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };
