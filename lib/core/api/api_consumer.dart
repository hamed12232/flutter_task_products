abstract class ApiConsumer {
  // this class to apply the dependency inversion principle
  // and to make the code more testable and maintainable
  
  Future<dynamic> get({
    required String url,
    Map<String, dynamic>? queryParameters,
  });


}