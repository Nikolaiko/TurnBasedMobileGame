class NetworkResponse<T> {
  final bool success;
  final T result;
  final String message;

  NetworkResponse(
    this.result,
    this.success,
    { this.message = "" }
  );
}