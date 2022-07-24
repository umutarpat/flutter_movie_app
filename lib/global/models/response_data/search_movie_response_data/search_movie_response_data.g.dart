// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMovieResponseData _$SearchMovieResponseDataFromJson(
        Map<String, dynamic> json) =>
    SearchMovieResponseData(
      page: json['page'] as int?,
      totalResults: json['total_results'] as int?,
      totalPages: json['total_pages'] as int?,
    );

Map<String, dynamic> _$SearchMovieResponseDataToJson(
        SearchMovieResponseData instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };
