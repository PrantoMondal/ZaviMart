import 'package:dio/dio.dart';
import 'package:zavi_mart/src/core/config/build_config.dart';
import 'package:zavi_mart/src/core/exceptions/error_handlers.dart';
import 'package:zavi_mart/src/core/exceptions/exceptions.dart';
import 'package:zavi_mart/src/core/network/dio_network_provider.dart';
import 'package:zavi_mart/src/core/network/network_error_handler.dart';

abstract class BaseRemoteDatasource {
  final String baseUrl = BuildConfig.instance.envConfig.baseUrl;

  Dio get dioClient => NetworkProvider.dioWithHeaderToken;

  final logger = BuildConfig.instance.envConfig.logger;

  Future<Response<T>> callApi<T>(Future<Response<T>> api) async {
    try {
      final response = await api;

      _validateHttpStatus(response);

      return response;
    } on DioException catch (dioError) {
      _logDioError(dioError);
      throw handleNetworkError(dioError);
    } on BaseException {
      rethrow;
    } catch (error, stack) {
      logger.e("Unexpected error >>> $error", stackTrace: stack);
      throw handleError(error.toString());
    }
  }

  void _validateHttpStatus(Response response) {
    final status = response.statusCode ?? 0;

    if (status < 200 || status >= 300) {
      logger.w(
        "HTTP Error >>> ${response.requestOptions.uri} "
        "Status: $status "
        "Response: ${response.data}",
      );
      throw handleError('Request failed with status code: $status');
    }
  }

  void _logDioError(DioException error) {
    logger.e(
      "API Error >>>>>>>\n"
      "URL: ${error.requestOptions.uri}\n"
      "Method: ${error.requestOptions.method}\n"
      "Request Data: ${error.requestOptions.data}\n"
      "Status: ${error.response?.statusCode}\n"
      "Response: ${error.response?.data}\n"
      "Message: ${error.message}",
    );
  }
}
