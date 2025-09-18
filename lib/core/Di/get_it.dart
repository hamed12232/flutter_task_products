import 'package:dio/dio.dart';
import 'package:flutter_task_products/core/api/dio_services.dart';
import 'package:flutter_task_products/services/products_repositiory.dart';
import 'package:flutter_task_products/services/products_repositiory_imp.dart';
import 'package:flutter_task_products/viewModel/cubit/products_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
void init() {
  
  // Register your services and repositories here

  // Example:
  // getIt.registerSingleton<MyService>(MyServiceImpl());
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton<DioServices>(() => DioServices(dio: sl()));
  sl.registerLazySingleton<ProductsRepositiory>(
    () => ProductsRepositioryImp(sl<DioServices>()),
  );
  sl.registerFactory<ProductsCubit>( () => ProductsCubit(sl<ProductsRepositiory>()));
}
