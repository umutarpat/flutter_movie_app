import 'package:dio/dio.dart';
import 'package:get/get.dart';

BaseOptions dioOptions = BaseOptions(
    baseUrl: "https://api.themoviedb.org/3",
    responseType: ResponseType.json,
    headers: {
      'accept': '*/*',
    });
