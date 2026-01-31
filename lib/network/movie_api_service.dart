import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movieapp/utils/utils.dart';

const String movieAPIUrl = 'https://api.themoviedb.org/3/';

const genreUrl = 'genre/movie/list';
const trendingUrl = 'trending/movie/week';
const nowPlayingUrl = 'movie/now_playing';
const topRatedUrl = 'movie/top_rated';
const popularUrl = 'movie/popular';
const searchMovieUrl = 'search/movie';
const discoverMovieUrl = 'discover/movie';
const movieUrl = 'movie';
const configurationUrl = 'configuration';
const creditsParameter = 'credits';
const videosParameter = 'videos';
const queryParameterName = 'query';
const genreParameterName = 'with_genres';
const pageParameterName = 'page';
const movieIdParameterName = 'movie_id';
const apiKeyParameterName = 'api_key';

class MovieAPIService {
  late final Dio dio;
  late String apiKey;

  final showDebugInfo = false;

  MovieAPIService();

  Future init() async {
    if (!isWeb()) {
      apiKey = dotenv.env['TMDB_KEY']!;
      configureDio();
    } else {
      await webLoad();
    }
  }

  Future webLoad() async {
    try {
      final dotEnvString = await rootBundle.loadString('dotenv');
      if (dotEnvString.contains('TMDB_KEY')) {
        final parts = dotEnvString.split('=');
        if (parts.length == 2) {
          apiKey = parts[1];
          if (apiKey.contains("'")) {
            apiKey = apiKey.replaceAll("'", "");
          }
        }
      } else {
        apiKey = dotEnvString;
      }
    } catch (e) {
      print(e);
    }
    configureDio();
  }

  void configureDio() {
    final options = BaseOptions(
      baseUrl: movieAPIUrl,
      connectTimeout: const Duration(seconds: 8),
      receiveTimeout: const Duration(seconds: 6),
    );
    dio = Dio(options);
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          final queryParameters = options.queryParameters;
          queryParameters[apiKeyParameterName] = apiKey;
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          return handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          return handler.next(error);
        },
      ),
    );
    if (showDebugInfo) {
      dio.interceptors.add(
        LogInterceptor(
          request: true,
          requestHeader: true,
          responseBody: true,
          error: true,
        ),
      );
    }
  }

  Future<Response> getTrending([int page = 1]) async {
    final response = await dio.get(trendingUrl);
    return response;
  }

  Future<Response> getNowPlaying([int page = 1]) async {
    final response = await dio.get(
      nowPlayingUrl,
      queryParameters: {pageParameterName: page},
    );
    return response;
  }

  Future<Response> getTopRated([int page = 1]) async {
    final response = await dio.get(
      topRatedUrl,
      queryParameters: {pageParameterName: page},
    );
    return response;
  }

  Future<Response> getPopular([int page = 1]) async {
    final response = await dio.get(
      popularUrl,
      queryParameters: {pageParameterName: page},
    );
    return response;
  }

  Future<Response> getMovieDetails(int movieId) async {
    return dio.get('$movieUrl/$movieId');
  }

  Future<Response> getMovieVideos(int movieId) async {
    return dio.get('$movieUrl/$movieId/$videosParameter');
  }

  Future<Response> getMovieCredits(int movieId) async {
    return dio.get('$movieUrl/$movieId/$creditsParameter');
  }

  Future<Response> getGenres() async {
    final response = await dio.get(genreUrl);
    return response;
  }

  Future<Response> searchMovies(String query, [int page = 1]) async {
    return dio.get(
      searchMovieUrl,
      queryParameters: {queryParameterName: query},
    );
  }

  Future<Response> searchMoviesByGenre(String genre, [int page = 1]) async {
    return dio.get(
      discoverMovieUrl,
      queryParameters: {genreParameterName: genre, pageParameterName: page},
    );
  }

  Future<Response> getMovieConfiguration() async {
    return dio.get(configurationUrl);
  }
}
