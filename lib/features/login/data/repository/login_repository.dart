import 'package:doctorna/core/api/api_error_handler.dart';
import 'package:doctorna/core/api/api_result.dart';
import 'package:doctorna/core/api/api_service.dart';
import 'package:doctorna/features/login/data/models/login_request_body.dart';
import 'package:doctorna/features/login/data/models/login_response.dart';

class LoginRepository{
  final ApiService _apiService;

  LoginRepository(this._apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async{
    try{
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}