import 'package:dio/dio.dart';
import 'package:flowers_shopping_app/data/api/core/constants/apis_end_points.dart';
import 'package:flowers_shopping_app/data/api/core/request_models/auth/register_request.dart';
import 'package:flowers_shopping_app/data/api/core/response_model/auth/register_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import 'core/constants/apis_baseurl.dart';

part 'api_services.g.dart';

@injectable
@RestApi(baseUrl: ApisBaseurl.baseUrl)
abstract class ApiServices {
  @factoryMethod
  factory ApiServices(Dio dio) = _ApiServices;
  @POST(ApisEndPoints.register)
  Future<RegisterResponse> registerUser(@Body() RegisterRequest body);
}
