import 'package:dio/dio.dart';
import 'package:doctorna/core/api/api_service.dart';
import 'package:doctorna/core/api/dio_factory.dart';
import 'package:doctorna/features/login/data/repository/login_repository.dart';
import 'package:doctorna/features/login/logic/login_cubit.dart';
import 'package:doctorna/features/signup/data/repository/signup_repository.dart';
import 'package:doctorna/features/signup/logic/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async{
  // Dio && ApiServices.
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepository>(() =>LoginRepository(getIt()));
  getIt.registerFactory<LoginCubit>(() =>LoginCubit(getIt()));

  // Signup
  getIt.registerLazySingleton<SignupRepository>(() =>SignupRepository(getIt()));
  getIt.registerFactory<SignupCubit>(() =>SignupCubit(getIt()));
}