import 'package:bookly_app/Features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/core/utiles/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
    getIt.get<ApiService>(),
    ),
  );

}
