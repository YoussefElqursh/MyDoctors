import 'package:dio/dio.dart';
import 'package:doctorna/core/api/api_constants.dart';
import 'package:doctorna/features/login/data/models/login_request_body.dart';
import 'package:doctorna/features/login/data/models/login_response.dart';
import 'package:doctorna/features/signup/data/models/signup_request_body.dart';
import 'package:doctorna/features/signup/data/models/signup_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService{
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody,
      );

  @POST(ApiConstants.register)
  Future<SignupResponse> signup(
      @Body() SignupRequestBody SignupRequestBody,
      );

}