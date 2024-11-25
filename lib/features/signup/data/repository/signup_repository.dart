import 'package:doctorna/core/api/api_error_handler.dart';
import 'package:doctorna/core/api/api_result.dart';
import 'package:doctorna/core/api/api_service.dart';
import 'package:doctorna/features/signup/data/models/signup_request_body.dart';
import 'package:doctorna/features/signup/data/models/signup_response.dart';

class SignupRepository{
  final ApiService _apiService;

  SignupRepository(this._apiService);
  Future<ApiResult<SignupResponse>> signup(SignupRequestBody signupRequestBody) async{
    try{
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}